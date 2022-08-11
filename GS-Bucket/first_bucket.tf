resource "google_storage_bucket" "first-bucket" {
  name          = var.bucket_name
  location      = "US"
# uniform_bucket_level_access = true
}


resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.first-bucket.name
  role = "roles/storage.objectViewer"
  members = [
    # format("%s/%s", "serviceaccount:" , var.email)
    "serviceAccount:${var.email}"
  ]
}