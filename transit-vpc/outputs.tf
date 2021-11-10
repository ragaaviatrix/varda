output "vpc" {
  description = "The created VPC with all of it's attributes"
  value       = module.transit_vpc.vpc
}

output "transit_gateway" {
  description = "The Aviatrix transit gateway object with all of it's attributes"
  value       = module.transit_vpc.transit_gateway
  sensitive = true
}
