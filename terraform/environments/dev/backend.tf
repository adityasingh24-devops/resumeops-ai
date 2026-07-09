terraform {
  backend "gcs" {
    bucket = "resumeops-ai-aditya-tfstate"
    prefix = "terraform/dev"
  }
}