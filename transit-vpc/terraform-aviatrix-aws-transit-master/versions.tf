terraform {
  required_providers {
    aviatrix = {
      source = "aviatrixsystems/aviatrix"
    }
  }
  required_version = ">= 0.13"
}

provider "aviatrix" {
  controller_ip = ""
  password = ""
  username = "" 
}
