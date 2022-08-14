resource "google_bigquery_dataset" "first-dataset" {
  count = length(var.dataset_name)
  dataset_id                  = var.dataset_name[count.index]
  location                    = "US"
  # the default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour).
  default_table_expiration_ms = 3600000

  access {
    role          = var.role
    user_by_email = var.user
  }
}

