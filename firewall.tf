resource "google_compute_firewall" "default" {
  name    = "nodeports"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["30000-40000"]
  }

  source_tags = ["cks-cluster"]
}
