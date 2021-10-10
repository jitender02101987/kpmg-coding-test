terraform {
  required_version = ">= 0.13.5"
}

provider "google" {
  project     = var.project_id
}

provider "google-beta" {
  project     = var.project_id
}
