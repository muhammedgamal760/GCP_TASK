resource "google_service_account" "first-sa" {
  for_each   = toset(var.sa_id)
  account_id = each.value
  display_name = each.value
}