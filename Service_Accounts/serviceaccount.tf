# resource "google_service_account" "first-sa" {
#   for_each   = toset(var.sa_id)
#   account_id = each.value
#   display_name = each.value
# }

resource "google_service_account" "first-sa" {
  count = length(var.sa_id)
  account_id = var.sa_id[count.index]
  display_name = var.sa_name[count.index]
}