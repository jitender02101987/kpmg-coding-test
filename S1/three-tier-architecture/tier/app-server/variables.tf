variable "vpc_subnetwork" {
 type = string 
}

variable "target_region" { 
 default = "asia-south1" 
}

variable "target_zone" { 
 default = "asia-south1-a" 
}

variable "project_id" {
 type = string 
}

variable "name_prefix" {
 type = string 
}

variable "vpc_project" {
 type = string 
}

variable "vpc_name" { 
 type = string 
}

variable "disk_image" {
 type = string
}

variable "service_account" {
 type = string
}