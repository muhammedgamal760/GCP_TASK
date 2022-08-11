resource "google_compute_router" "router" {
  name    = "my-router"
  region  = google_compute_subnetwork.first-subnet.region
  network = google_compute_network.first-vpc.id

  bgp {
    asn = 64514
  }
}

resource "google_compute_router_nat" "nat" {
  name                               = "my-router-nat"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  subnetwork {
    name = google_compute_subnetwork.first-subnet.name
    source_ip_ranges_to_nat = [var.subnet_cidr]
  }                       
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
}