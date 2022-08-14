output email{
    # value = {for k , v in google_service_account.first-sa: k => v.email}
    value = tolist(google_service_account.first-sa[*].email)
}

