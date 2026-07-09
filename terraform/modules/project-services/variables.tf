variable "project_id" {
  description = "The GCP project ID in which APIs will be enabled."
  type        = string
}

variable "services" {
  description = "The set of Google Cloud APIs to enable."
  type        = set(string)
}