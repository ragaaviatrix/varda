module "transit_vpc" {
    source = "./terraform-aviatrix-aws-transit-master"
    cidr = var.cidr
    account = var.account
    region = var.region
      
}

# module "spoke_1" {

#     source = "./terraform-aviatrix-aws-spoke-master"
#     account = var.account
#     region = var.region
#     name = var.spoke_name
#     # transit_gw = module.transit_vpc.transit_gateway.gw_name
  
# }