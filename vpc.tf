module "vpc" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 3.2.2"

    project_id   = var.project
    network_name = "abc-network"

    subnets = [
  {
    subnet_name   = "abc-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}

