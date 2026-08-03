variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "bucket_name" {
  description = "Cloud Storage bucket name."
  type        = string
}

variable "location" {
  description = "Bucket location."
  type        = string
  default     = "ASIA-SOUTH1"
}