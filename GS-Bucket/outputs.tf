output bucket_id{
    value = [for gs in google_storage_bucket.first-bucket : gs.id]
}

