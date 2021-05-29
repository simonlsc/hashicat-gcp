module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.2.2"

    project_id   = var.project
    network_name = "gaurav-network"

    subnets = {
        subnet_name   = "gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
    
}
