module "security_domains" {
    source = "./security-domains"
    shared_services = var.shared_services_sd
    prod = var.production_sd
    non_prod = var.non_production_sd

}

module "spoke_1" {

  source     = "./terraform-aviatrix-aws-spoke-master"
  account    = var.account
  region     = var.region
  name       = var.spoke_1_name
  transit_gw = var.transit_gateway
  cidr       = var.cidr_spoke_1
  security_domain = var.non_production_sd

}

# module "fqdn_1" {

#   source       = "./fqdn"
#   account      = var.account
#   region       = var.region
#   vpc_id       = module.spoke_1.vpc.vpc_id
#   subnet       = module.spoke_1.vpc.public_subnets[0].cidr
#   peer_subnet  = module.spoke_1.vpc.public_subnets[1].cidr
#   fqdn_gw_name = var.fqdn_gw_name_1


# }


module "spoke_2" {

  source     = "./terraform-aviatrix-aws-spoke-master"
  account    = var.account
  region     = var.region
  name       = var.spoke_2_name
  transit_gw = var.transit_gateway
  cidr       = var.cidr_spoke_2
  security_domain = var.production_sd

}


module "spoke_3" {

  source     = "./terraform-aviatrix-aws-spoke-master"
  account    = var.account
  region     = var.region
  name       = var.spoke_3_name
  transit_gw = var.transit_gateway
  cidr       = var.cidr_spoke_3
  security_domain = var.shared_services_sd

}