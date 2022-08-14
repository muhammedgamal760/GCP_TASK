output bq_id{
    value = google_bigquery_dataset.first-dataset[*].id
}

# output bq_sa_id {
#     value = google_service_account.dataset-sa.id
# }