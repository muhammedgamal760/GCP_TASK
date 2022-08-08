resource "google_compute_network" "first-vpc" {
#   project                 = ""
  name                    = var.vpc_name
  auto_create_subnetworks = false
  mtu                     = 1460
}