resource "google_bigquery_dataset" "first-dataset" {
  dataset_id                  = "first-dataset"
  location                    = "US"
  # the default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour).
  default_table_expiration_ms = 3600000

  access {
    role          = "OWNER"
    user_by_email = google_service_account.dataset-sa.email
  }
}

resource "google_service_account" "dataset-sa" {
  account_id   = "dataset-sa"
  display_name = "dataset-sa"
}