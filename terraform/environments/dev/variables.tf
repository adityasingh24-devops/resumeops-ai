variable "project_id" {
  description = "The GCP project ID used for ResumeOps AI resources."
  type        = string
}

variable "region" {
  description = "The default GCP region for ResumeOps AI resources."
  type        = string
  default     = "asia-south1"
}