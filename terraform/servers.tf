
resource "scaleway_instance_ip" "public_ip" {
}

resource "random_pet" "server" {
}

resource "scaleway_instance_server" "felxify-instance" {
  name  = "Felxify - ${random_pet.server.id}"
  type  = var.scaleway_instance_server
  image = var.scaleway_instance_image
  tags = [ var.project_name, var.public_key, "Felxify" ]

  ip_id = scaleway_instance_ip.public_ip.id
  security_group_id = scaleway_instance_security_group.felxify-security-group.id

  user_data = {
    cloud-init = file("${path.module}/cloud-init.yml")
  }
  

}

