terraform {
  required_version = "1.2.6"

  backend "gcs" {
    bucket = "terraform-focal-limiter"
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
