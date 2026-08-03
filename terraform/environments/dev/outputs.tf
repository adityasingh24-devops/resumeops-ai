output "enabled_project_services" {
  description = "Google Cloud APIs managed for the ResumeOps AI development environment."
  value       = module.project_services.enabled_services
}

output "network_name" {
  description = "ResumeOps AI development VPC network name."
  value       = module.network.network_name
}

output "subnetwork_name" {
  description = "ResumeOps AI development GKE subnet name."
  value       = module.network.subnetwork_name
}

output "gke_node_service_account_email" {
  description = "Dedicated GKE node service account email."
  value       = module.iam.gke_node_service_account_email
}

output "resume_api_service_account_email" {
  description = "Resume API service account email."
  value       = module.iam.resume_api_service_account_email
}

output "ai_worker_service_account_email" {
  description = "AI worker service account email."
  value       = module.iam.ai_worker_service_account_email
}
output "gke_cluster_name" {
  description = "ResumeOps AI development GKE cluster name."
  value       = module.gke.cluster_name
}

output "gke_cluster_location" {
  description = "ResumeOps AI development GKE cluster location."
  value       = module.gke.cluster_location
}

output "gke_node_pool_name" {
  description = "ResumeOps AI development GKE node pool name."
  value       = module.gke.node_pool_name
}

output "storage_bucket_name" {
  value = module.storage.bucket_name
}

output "storage_bucket_url" {
  value = module.storage.bucket_url
}

output "artifact_registry_repository" {
  value = module.artifact_registry.repository_name
}

output "artifact_registry_location" {
  value = module.artifact_registry.repository_location
}