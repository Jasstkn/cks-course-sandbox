terraform {
  required_version = "1.1.9"

  backend "gcs" {
    bucket = "tfstate-tokyo-analyst"
    prefix = "state/sandbox"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.20.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
