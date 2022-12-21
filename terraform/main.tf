terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      #   version = "..."
    }
  }
}

# Create a Linode
resource "linode_instance" "web" {
  label           = var.label
  image           = var.image
  region          = var.region
  type            = var.instance_type
  authorized_keys = [var.public_key]
  root_pass       = var.root_pass
}

output "ip_address" {
  value = linode_instance.web.ip_address
}