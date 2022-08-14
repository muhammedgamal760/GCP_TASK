resource "google_service_account" "first-sa" {
  count = length(var.account_id)
  account_id   = var.sa_id[count.index]
  display_name = var.sa_name[count.index]
}