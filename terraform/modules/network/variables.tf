variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region for the subnet."
  type        = string
}

variable "network_name" {
  description = "The name of the custom VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the GKE subnet."
  type        = string
}

variable "node_ip_cidr" {
  description = "Primary IPv4 CIDR range used by GKE nodes."
  type        = string
}

variable "pod_ip_range_name" {
  description = "Name of the secondary IPv4 range used by GKE Pods."
  type        = string
}

variable "pod_ip_cidr" {
  description = "Secondary IPv4 CIDR range used by GKE Pods."
  type        = string
}

variable "service_ip_range_name" {
  description = "Name of the secondary IPv4 range used by Kubernetes Services."
  type        = string
}

variable "service_ip_cidr" {
  description = "Secondary IPv4 CIDR range used by Kubernetes Services."
  type        = string
}