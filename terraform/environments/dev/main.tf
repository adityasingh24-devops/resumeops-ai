module "project_services" {
  source = "../../modules/project-services"

  project_id = var.project_id

  services = [
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com",
    "clouddeploy.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "documentai.googleapis.com",
    "firestore.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "secretmanager.googleapis.com",
    "serviceusage.googleapis.com",
    "storage.googleapis.com",
    "aiplatform.googleapis.com",
  ]
}

module "network" {
  source = "../../modules/network"

  project_id = var.project_id
  region     = var.region

  network_name = "resumeops-dev-vpc"
  subnet_name  = "resumeops-dev-gke-subnet"

  node_ip_cidr = "10.10.0.0/24"

  pod_ip_range_name = "resumeops-dev-pods"
  pod_ip_cidr       = "10.20.0.0/20"

  service_ip_range_name = "resumeops-dev-services"
  service_ip_cidr       = "10.30.0.0/24"

  depends_on = [module.project_services]
}

module "iam" {
  source = "../../modules/iam"

  project_id = var.project_id

  gke_node_service_account_id   = "resumeops-dev-gke-nodes"
  resume_api_service_account_id = "resumeops-dev-resume-api"
  ai_worker_service_account_id  = "resumeops-dev-ai-worker"

  depends_on = [module.project_services]
}