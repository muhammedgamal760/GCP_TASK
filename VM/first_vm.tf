resource "google_compute_instance" "first-vm" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  
  # metadata_startup_script = "gcloud compute scp /home/jimmybuntu/Downloads/${bucket-sa.id}.json first-vm:~/credentials.json --tunnel-through-iap"

  network_interface {
    network = var.vpc_id
    subnetwork = var.subnet_id
  }
  allow_stopping_for_update = true
  tags = ["first-vm"]

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.email
    scopes = ["cloud-platform"]
  }
  depends_on = [
      var.email
    ]
}





