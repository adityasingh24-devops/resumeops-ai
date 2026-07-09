resource "google_compute_network" "this" {
  name                    = var.network_name
  project                 = var.project_id
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "gke" {
  name          = var.subnet_name
  project       = var.project_id
  region        = var.region
  network       = google_compute_network.this.id
  ip_cidr_range = var.node_ip_cidr

  private_ip_google_access = true

  secondary_ip_range {
    range_name    = var.pod_ip_range_name
    ip_cidr_range = var.pod_ip_cidr
  }

  secondary_ip_range {
    range_name    = var.service_ip_range_name
    ip_cidr_range = var.service_ip_cidr
  }
}