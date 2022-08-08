resource "google_container_cluster" "first-gke" {
  name     = var.cluster_name
  location = var.cluster_region
  initial_node_count = 2
  remove_default_node_pool = true

  network = var.vpc_id
  subnetwork = var.subnet_id

  default_max_pods_per_node = 10

  ip_allocation_policy {
  cluster_secondary_range_name = "pods"
  services_secondary_range_name = "services"
  }

  # master_authorized_networks_config {
  # cidr_blocks {
  #   # here we will put ip of the vm i guess
  #   cidr_block = "10.0.1.4/32"
  # }
  # }

  private_cluster_config {
  enable_private_endpoint = true
  enable_private_nodes    = true
  master_ipv4_cidr_block  = var.master_node_cidr
} 
  workload_identity_config {
  workload_pool = "jamajeemo.svc.id.goog"
}
cluster_autoscaling{
    enabled = false
}

}

resource "google_container_node_pool" "first-node-pool" {
  name       = "first-node-pool"
#   location = "us-east1-b"
  node_locations = var.cluster_zones_list
  cluster    = google_container_cluster.first-gke.name
  node_count = var.number_of_nodes_per_zone
  node_config {
    preemptible  = true
    machine_type = var.machine_type
    # service_account = google_service_account.jimmy-sa2.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

