output o {
  value = {
    core_glb = {
      name = "${var.name_prefix}-${var.name}"
      backend_services = google_compute_backend_service.default.*.self_link
      external_ip4 = google_compute_global_address.default.address
    }
  }
}

output "ip_address" {
  value = google_compute_global_address.default.address
}