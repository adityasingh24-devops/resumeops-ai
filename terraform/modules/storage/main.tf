resource "google_storage_bucket" "resume_storage" {
  project  = var.project_id
  name     = var.bucket_name
  location = var.location

  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  public_access_prevention = "enforced"

  versioning {
    enabled = true
  }

  labels = {
    application = "resumeops"
    environment = "dev"
    managed_by  = "terraform"
  }

  lifecycle_rule {
    condition {
      age = 365
    }

    action {
      type = "Delete"
    }
  }
}