resource "google_compute_firewall" "firewall-ssh" {
  name    = "firewall-ssh"
  network = google_compute_network.first-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"] 
  target_tags = ["first-vm","first-gke"]
}
