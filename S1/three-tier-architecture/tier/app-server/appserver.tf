# ========================================
# Application tier MIG
# ========================================

module app_server_mig {
  source             = "../../module/mig"
  project_id         = var.project_id
  region             = var.target_region
  zone               = var.target_zone
  tag_name           = "${var.name_prefix}-app-server"
  cluster_size       = 1 
  create_target_pool = true
  named_ports        = [
    {
      name = "http"
      port = 8080
    }
  ]

  source_image       = var.disk_image
  short_name         = "${var.name_prefix}-app-mig"
  machine_type       = "n1-standard-8"
  startup_script     = "echo hi > /test.txt"
  name                  = "${var.name_prefix}-app-mig"
  service_account_email = var.service_account
  network_project       = var.vpc_project
  subnetwork_name       = var.vpc_subnetwork
  tags                  = ["${var.name_prefix}-ssh"]
}