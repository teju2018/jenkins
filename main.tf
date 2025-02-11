provider "google" {
  project     = "ferrous-upgrade-446608-k0"
  region      = "us-central1"
  zone        = "us-central1-a"
}


resource "google_compute_instance" "my-instance" {
  name         = "myone1"
  zone         = "us-central1-a"
  machine_type = "e2-micro"
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
}
