output "cluster_name" {
  description = "The name of the GKE cluster."
  value       = google_container_cluster.this.name
}

output "cluster_location" {
  description = "The location of the GKE cluster."
  value       = google_container_cluster.this.location
}

output "node_pool_name" {
  description = "The name of the managed GKE node pool."
  value       = google_container_node_pool.primary.name
}