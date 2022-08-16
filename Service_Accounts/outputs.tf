output email{
    value = tolist([for sa in google_service_account.first-sa : sa.email])
}

