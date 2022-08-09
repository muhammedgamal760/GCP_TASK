resource "google_storage_bucket" "first-bucket" {
  name          = "first-bucket"
  location      = "US"
#   uniform_bucket_level_access = true

}

resource "google_service_account" "bucket-sa" {
  account_id   = "bucket-sa"
  display_name = "bucket-sa"
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.first-bucket.name
  role = "roles/storage.admin"
  members = [
    "bucket-sa",
  ]
}