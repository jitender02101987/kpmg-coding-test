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

variable "vpc_subnetwork" { 
type = string 
}

variable "target_region" {
type = string 
default = "asia-south1" 
}

variable "db_user_password" { 
type = string 
}


variable "target_zone" { 
default = "asia-south1-a" 
}
