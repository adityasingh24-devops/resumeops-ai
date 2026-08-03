resource "google_artifact_registry_repository" "docker" {
  project       = var.project_id
  location      = var.location
  repository_id = var.repository_id

  description = "Docker images for ResumeOps AI"

  format = "DOCKER"

  labels = {
    application = "resumeops"
    environment = "dev"
    managed_by  = "terraform"
  }
}