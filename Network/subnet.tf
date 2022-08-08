resource "google_compute_subnetwork" "first-subnet" {
  name          = "first-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-east1"
  network       = google_compute_network.first-vpc.id
#   secondary_ip_range {
#     range_name    = "pods"
#     ip_cidr_range = "10.0.3.0/24"
#   }
#   secondary_ip_range {
#     range_name    = "services"
#     ip_cidr_range = "10.0.4.0/24"
#   }
}