output vpc_id {
    value = google_compute_network.first-vpc.id
}

output subnet_id {
    value = google_compute_subnetwork.first-subnet.id
}

output firewall_id {
    value = google_compute_firewall.firewall-ssh.id
}