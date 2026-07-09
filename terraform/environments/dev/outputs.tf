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