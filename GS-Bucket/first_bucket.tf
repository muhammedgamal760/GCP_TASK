resource "google_storage_bucket" "first-bucket" {
  count = length(var.bucket_name)
  name          = var.bucket_name[count.index]
  location      = "US"
# uniform_bucket_level_access = true
}


resource "google_storage_bucket_iam_binding" "binding" {
  count = length(var.bucket_name)
  bucket = google_storage_bucket.first-bucket[count.index].name
  role = "roles/storage.objectViewer"
  members = [
    # format("%s/%s", "serviceaccount:" , var.email)
    "serviceAccount:${var.email}"
  ]
}