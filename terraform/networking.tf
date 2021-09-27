
resource "scaleway_instance_security_group" "felxify-security-group" {
  description = "Felxify "
  name        = "Felxify - ${random_pet.server.id}"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"


  inbound_rule {
    action = "accept"
    port   = "22"
    ip_range = var.trusted_network
  }

  inbound_rule {
    action = "accept"
    port   = "80"
  }

  inbound_rule {
    action = "accept"
    port   = "443"
  }


 


}

