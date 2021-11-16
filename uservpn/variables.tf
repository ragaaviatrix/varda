variable "spoke_name" {

  default = "spoke-uservpn"

}

variable "cidr" {
  default = "10.230.0.0/23"
}

variable "account" {
  description = "The AWS account name, as known by the Aviatrix controller"
  type        = string
  default       = "Primary_acc"
}

variable "region" {
  default = "us-west-2"
}


variable "transit_gw" {
  default = "varda-Avx-Transit-euc1-avx-gw"
}


