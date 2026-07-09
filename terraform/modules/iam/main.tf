resource "google_service_account" "gke_nodes" {
  project      = var.project_id
  account_id   = var.gke_node_service_account_id
  display_name = "ResumeOps Dev GKE Nodes"
  description  = "Dedicated service account for ResumeOps AI GKE nodes."
}

resource "google_service_account" "resume_api" {
  project      = var.project_id
  account_id   = var.resume_api_service_account_id
  display_name = "ResumeOps Dev Resume API"
  description  = "Workload identity for the ResumeOps AI resume API."
}

resource "google_service_account" "ai_worker" {
  project      = var.project_id
  account_id   = var.ai_worker_service_account_id
  display_name = "ResumeOps Dev AI Worker"
  description  = "Workload identity for the ResumeOps AI document and AI processing worker."
}

locals {
  gke_node_roles = toset([
    "roles/artifactregistry.reader",
    "roles/container.defaultNodeServiceAccount",
  ])

  ai_worker_roles = toset([
    "roles/aiplatform.user",
    "roles/documentai.apiUser",
  ])
}

resource "google_project_iam_member" "gke_node_roles" {
  for_each = local.gke_node_roles

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.gke_nodes.email}"
}

resource "google_project_iam_member" "ai_worker_roles" {
  for_each = local.ai_worker_roles

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.ai_worker.email}"
}