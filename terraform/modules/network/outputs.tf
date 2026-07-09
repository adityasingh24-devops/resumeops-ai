output "network_id" {
  description = "The ID of the custom VPC network."
  value       = google_compute_network.this.id
}

output "network_name" {
  description = "The name of the custom VPC network."
  value       = google_compute_network.this.name
}

output "subnetwork_id" {
  description = "The ID of the GKE subnetwork."
  value       = google_compute_subnetwork.gke.id
}

output "subnetwork_name" {
  description = "The name of the GKE subnetwork."
  value       = google_compute_subnetwork.gke.name
}

output "pod_ip_range_name" {
  description = "The name of the GKE Pod secondary IP range."
  value       = var.pod_ip_range_name
}

output "service_ip_range_name" {
  description = "The name of the Kubernetes Service secondary IP range."
  value       = var.service_ip_range_name
}