output "bucket_name" {
  description = "Resume storage bucket name."
  value       = google_storage_bucket.resume_storage.name
}

output "bucket_url" {
  description = "Cloud Storage bucket URL."
  value       = google_storage_bucket.resume_storage.url
}