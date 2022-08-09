resource "google_compute_instance" "first-vm" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  
  metadata_startup_script = "scp -i /home/jimmybuntu/Downloads/credentials.json projectname@${self.public_ip}:~/credentials.json"

  network_interface {
    network = var.vpc_id

    access_config {
      //Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.vm-sa.email
    scopes = ["cloud-platform"]
  }
  depends_on = [
      google_service_account.vm-sa
    ]
}



resource "google_service_account" "vm-sa" {
  account_id   = "first-vm-sa"
  display_name = "first-vm-sa"
}

