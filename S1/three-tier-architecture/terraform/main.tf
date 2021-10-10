module "vpc" {
  source         = "../module/vpc"
  network_name   = var.network_name
  network_cidr   = var.network_cidr
  target_region  = var.target_region
  name_prefix    = var.name
}

module "web_server" {
  source          = "../tier/web-server"
  project_id      = var.project_id
  name_prefix     = var.name
  vpc_project     = var.project_id
  vpc_name        = module.vpc.subnetwork
  vpc_subnetwork  = module.vpc.subnetwork
  target_region   = var.target_region
  target_zone     = var.target_zone
  disk_image      = var.disk_name
  service_account = google_service_account.test_sa.email
}

# just creating MIG, ILB needs to be created
module "app_server" {
  source          = "../tier/app-server"
  project_id      = var.project_id
  name_prefix     = var.name
  vpc_project     = var.project_id
  vpc_name        = module.vpc.subnetwork
  vpc_subnetwork  = module.vpc.subnetwork
  target_region   = var.target_region
  target_zone     = var.target_zone
  disk_image      = var.disk_name
  service_account = google_service_account.test_sa.email
}

module "database" {
  source                = "../tier/database"
  project_id            = var.project_id
  name_prefix           = var.name
  vpc_project           = var.project_id
  vpc_name              = module.vpc.subnetwork
  vpc_subnetwork        = module.vpc.subnetwork
  target_region         = var.target_region
  target_zone           = var.target_zone
  db_user_password      = "test" # To be stored in vault
}
