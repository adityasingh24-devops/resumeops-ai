variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "gke_node_service_account_id" {
  description = "Account ID for the dedicated GKE node service account."
  type        = string
}

variable "resume_api_service_account_id" {
  description = "Account ID for the Resume API service account."
  type        = string
}

variable "ai_worker_service_account_id" {
  description = "Account ID for the AI worker service account."
  type        = string
}