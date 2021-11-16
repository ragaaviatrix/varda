resource "aviatrix_gateway" "avx-fqdn" {
  cloud_type = var.cloud_type

  vpc_reg            = var.region
  vpc_id             = var.vpc_id
  account_name       = var.account
  gw_name            = var.fqdn_gw_name
  gw_size            = "t2.medium"
  single_ip_snat     = true
  subnet             = var.subnet
  peering_ha_subnet  = var.peer_subnet
  peering_ha_gw_size = "t2.medium"
}
