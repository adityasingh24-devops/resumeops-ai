variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "location" {
  description = "Artifact Registry location."
  type        = string
  default     = "asia-south1"
}

variable "repository_id" {
  description = "Artifact Registry repository name."
  type        = string
}