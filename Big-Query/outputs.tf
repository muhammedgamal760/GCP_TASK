output id{
    # value = tolist([for dataset in google_bigquery_dataset.first-dataset : dataset.id])
    value = google_bigquery_dataset.first-dataset[*].id
}