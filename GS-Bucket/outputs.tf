output bucket_id{
    value = google_storage_bucket.first-bucket.id
}

output bucket_sa_id {
    value = google_service_account.bucket-sa.id
}