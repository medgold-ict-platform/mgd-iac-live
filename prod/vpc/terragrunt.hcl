include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::ssh://git@bitbucket.org/beetobit/terragrunt-aws-vpc?ref=v0.12"
}



inputs = {
  vpc_azs  = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  vpc_cidr = "10.1.0.0/16"

  private_subnets = ["10.1.11.0/24", "10.1.12.0/24", "10.1.13.0/24"]

  public_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]

  database_subnets   = ["10.1.128.0/24", "10.1.129.0/24", "10.1.130.0/24"]

  elasticache_subnets = ["10.1.132.0/24", "10.1.133.0/24", "10.1.134.0/24"]
  redshift_subnets    = ["10.1.136.0/24", "10.1.137.0/24", "10.1.138.0/24"]

  single_nat_gateway     = true
  one_nat_gateway_per_az = false
  enable_vpn_gateway = false
  }
}
