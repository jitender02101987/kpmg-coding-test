variable "project_id" {
  type = string
  default = "kpmg-test-10102201"
}

variable "name" {
  type        = string
  default     = "kpmg-test"
}

variable target_region {
  type    = string
  default = "asia-south1"
}

variable target_zone {
  type    = string
  default = "asia-south1-a"
}

variable disk_name {
  type    = string
  default = "rhel-7-7-sap-v20210916"
}

variable "network_name" {
  type    = string
  default = "kpmg-question-1"
}

variable "network_cidr" {
  default = "10.160.0.0/24"
}
