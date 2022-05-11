resource "google_compute_instance" "cks" {
  for_each     = var.cluster-roles
  name         = "cks-${each.key}"
  machine_type = "e2-medium"

  desired_status = var.desired_status

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20220419"
      size = 40
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  tags = ["cks-cluster"]

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.gce-default.email
    scopes = ["cloud-platform"]
  }

  depends_on = [
    google_service_account.gce-default
  ]
}
