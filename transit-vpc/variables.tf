variable "cidr" {
  description = "The CIDR range to be used for the VPC"
  type        = string
  default       = "10.230.2.0/23"
}
variable "account" {
  description = "The AWS account name, as known by the Aviatrix controller"
  type        = string
  default       = "Primary_acc"
}

variable "region" {
  default = "us-west-2"
}

variable "spoke_name" {
  default = "spoke 1"
}

