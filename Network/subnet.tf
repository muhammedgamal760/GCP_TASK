resource "google_compute_subnetwork" "first-subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = "us-central1"
  network       = google_compute_network.first-vpc.id
  private_ip_google_access = true
  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "10.0.3.0/24"
  }
  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = "10.0.4.0/24"
  }
}