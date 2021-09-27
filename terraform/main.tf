terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
    }
  }
  required_version = ">= 0.13"
}

provider "scaleway" {
  zone            = var.zone
  region          = var.region
  project_id      = var.project_id
}



output "Felxify-endpoint" {
   description = "The Felxify endpoint."
   value = [ "${scaleway_instance_ip.public_ip.address}"]
}

