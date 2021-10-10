output "address" {
  value = google_sql_database_instance.test_db.private_ip_address
}