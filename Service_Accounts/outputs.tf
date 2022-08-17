# output email{
#     value = tolist([for sa in google_service_account.first-sa : sa.email])
# }

output email{
    value = google_service_account.first-sa[*].email
}


