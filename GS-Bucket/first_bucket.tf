resource "google_storage_bucket" "first-bucket" {
  for_each          = var.bucket_name
  name              = each.value
  location      = "US"
}


resource "google_storage_bucket_iam_binding" "binding" {
  for_each = var.bucket_name
  bucket = each.value
  role = "roles/storage.objectViewer"
  members = [
    "serviceAccount:${var.email}"
  ]
}