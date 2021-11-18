resource "aviatrix_segmentation_security_domain" "shared_services" {
    domain_name = var.shared_services
}

resource "aviatrix_segmentation_security_domain" "prod" {
    domain_name = var.prod
}

resource "aviatrix_segmentation_security_domain" "non_prod" {
    domain_name = var.non_prod
}



resource "aviatrix_segmentation_security_domain_connection_policy" "segmentation_security_domain_connection_policy_1" {
    domain_name_1 = aviatrix_segmentation_security_domain.prod.domain_name
    domain_name_2 = aviatrix_segmentation_security_domain.shared_services.domain_name
}

resource "aviatrix_segmentation_security_domain_connection_policy" "segmentation_security_domain_connection_policy_2" {
    domain_name_1 = aviatrix_segmentation_security_domain.non_prod.domain_name
    domain_name_2 = aviatrix_segmentation_security_domain.shared_services.domain_name
}