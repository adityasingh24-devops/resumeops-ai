output "enabled_project_services" {
  description = "Google Cloud APIs managed for the ResumeOps AI development environment."
  value       = module.project_services.enabled_services
}