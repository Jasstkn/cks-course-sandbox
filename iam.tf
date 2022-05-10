resource "google_service_account" "gce-default" {
  account_id   = "gce-default"
  display_name = "GCE default account"
}
