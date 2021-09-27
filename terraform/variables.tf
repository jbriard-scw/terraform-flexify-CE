
variable "project_name" {
  description = "An idenfitying name used for names of cloud resources"
}

variable "project_id" {
}
variable "cidr" {
  default = "/32"
}

variable "zone" {
  default = "fr-par-1"
}

variable "region" {
  default = "fr-par"
}

variable "public_key" {
}

variable "trusted_network" {
}

variable "scaleway_instance_server" {
  default = "DEV1-L"
}

variable "scaleway_instance_image" {
  default = "rockylinux_8"
}


