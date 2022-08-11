output "ip" {
  value = google_compute_instance.first-vm.network_interface.0.network_ip
}