output "gke_node_service_account_email" {
  description = "Email of the dedicated GKE node service account."
  value       = google_service_account.gke_nodes.email
}

output "resume_api_service_account_email" {
  description = "Email of the Resume API service account."
  value       = google_service_account.resume_api.email
}

output "ai_worker_service_account_email" {
  description = "Email of the AI worker service account."
  value       = google_service_account.ai_worker.email
}