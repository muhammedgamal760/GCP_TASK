resource "google_container_registry" "registry" {
  project  = "jimmy-359009"
  location = "US"
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_container_registry.registry.id
  role = var.role
  member = "serviceAccount:${var.email}"
}