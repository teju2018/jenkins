provider "google" {
  
  
  project     = "ferrous-upgrade-446608-k0"
  region      = "us-central1"
  zone        = "us-central1-a"
}
locals {
  instance_name = "${terraform.workspace}-instance"
}
resource "google_compute_instance" "my-instance" {
  name         = var.name
  zone         = var.zone
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }
  network_interface {
    network = "default"
    access_config {

    }
  }
  labels = {
    name = local.instance_name
  }
}
