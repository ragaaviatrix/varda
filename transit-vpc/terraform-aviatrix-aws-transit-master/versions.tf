terraform {
  required_providers {
    aviatrix = {
      source = "aviatrixsystems/aviatrix"
    }
  }
  required_version = ">= 0.13"
}

provider "aviatrix" {
  controller_ip = "3.66.206.13"
  password = "Aviatrix123#"
  username = "admin" 
}