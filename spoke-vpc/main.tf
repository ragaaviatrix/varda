module "spoke_1" {

    source = "./terraform-aviatrix-aws-spoke-master"
    account = var.account
    region = var.region
    name = var.spoke_1_name
    transit_gw = var.transit_gateway
    cidr = var.cidr_spoke_1
  
}


module "spoke_2" {

    source = "./terraform-aviatrix-aws-spoke-master"
    account = var.account
    region = var.region
    name = var.spoke_2_name
    transit_gw = var.transit_gateway
    cidr = var.cidr_spoke_2
  
}