resource "google_container_cluster" "this" {
  name     = var.cluster_name
  project  = var.project_id
  location = var.zone

  network    = var.network_id
  subnetwork = var.subnetwork_id

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"

  ip_allocation_policy {
    cluster_secondary_range_name  = var.pod_ip_range_name
    services_secondary_range_name = var.service_ip_range_name
  }

  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }

  release_channel {
    channel = "REGULAR"
  }

  enable_shielded_nodes = true

  deletion_protection = false
}

resource "google_container_node_pool" "primary" {
  name     = var.node_pool_name
  project  = var.project_id
  location = var.zone
  cluster  = google_container_cluster.this.name

  initial_node_count = 1

  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    machine_type    = var.machine_type
    service_account = var.node_service_account_email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]

    shielded_instance_config {
      enable_secure_boot          = true
      enable_integrity_monitoring = true
    }

    workload_metadata_config {
      mode = "GKE_METADATA"
    }

    labels = {
      environment = "dev"
      application = "resumeops-ai"
    }

    tags = [
      "resumeops-dev-gke-node",
    ]
  }
}