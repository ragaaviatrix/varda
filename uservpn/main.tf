module "uservpn" {
    source = "./terraform-aviatrix-aws-uservpn-master"
    
    spoke_name = var.spoke_name
    cidr = var.cidr
    region = var.region
    aws_account_name = var.account
    transit_gw = var.transit_gw
}
