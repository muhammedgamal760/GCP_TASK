resource "google_compute_instance" "first-vm" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    network = module.Network.vpc_id

    access_config {
      //Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.vm-sa.email
    scopes = ["cloud-platform"]
  }
}



resource "google_service_account" "vm-sa" {
  account_id   = "vm-sa"
  display_name = "vm-sa"
}