provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_compute_instance" "instance" {
  count        = "${var.instace_count}"
  name         = "docker-monolith-${count.index+1}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["docker-monolith"]

  # boot HDD
  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file("${var.public_key_path}")}"
  }

  connection {
    type        = "ssh"
    user        = "appuser"
    agent       = false
    private_key = "${file("${var.private_key_path}")}"
  }

}

resource "google_compute_firewall" "firewall-instance" {
  name          = "allow-access"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["docker-monolith"]

  allow {
    protocol = "tcp"
    ports    = ["${var.app_port}"]
  }
}
