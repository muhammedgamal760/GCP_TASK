resource "google_compute_network" "first-vpc" {
#   project                 = ""
  name                    = "first-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}