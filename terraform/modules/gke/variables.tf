variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "zone" {
  description = "The GCP zone for the zonal GKE cluster."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "node_pool_name" {
  description = "The name of the managed GKE node pool."
  type        = string
}

variable "network_id" {
  description = "The ID of the VPC network used by GKE."
  type        = string
}

variable "subnetwork_id" {
  description = "The ID of the subnetwork used by GKE."
  type        = string
}

variable "pod_ip_range_name" {
  description = "The secondary subnet range used for GKE Pods."
  type        = string
}

variable "service_ip_range_name" {
  description = "The secondary subnet range used for Kubernetes Services."
  type        = string
}

variable "node_service_account_email" {
  description = "The dedicated GCP service account used by GKE nodes."
  type        = string
}

variable "machine_type" {
  description = "The Compute Engine machine type used by GKE nodes."
  type        = string
  default     = "e2-standard-2"
}