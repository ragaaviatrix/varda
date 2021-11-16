variable "cidr_spoke_1" {
  description = "The CIDR range to be used for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "cidr_spoke_2" {
  description = "The CIDR range to be used for the VPC"
  type        = string
  default     = "10.2.0.0/16"
}

variable "account" {
  description = "The AWS account name, as known by the Aviatrix controller"
  type        = string
  default     = "Primary_acc"
}

variable "region" {
  default = "us-west-2"
}

variable "spoke_1_name" {
  default = "spoke-1"
}

variable "spoke_2_name" {
  default = "spoke-2"
}

variable "transit_gateway" {
  default = "varda-Avx-Transit-euc1-avx-gw"
}

variable "fqdn_gw_name_1" {
  default = "fqdn-1"
}

variable "fqdn_gw_name_2" {
  default = "fqdn-2"
}
