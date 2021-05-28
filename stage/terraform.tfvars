project = "medgold"

project_full_name = "medgold"

base_domain = "med-gold.eu"

wp_sites = ["med-gold.eu"]

cdn_alias_prefix = "stage-"

s3_bucket_prefix = "stage-"

wp_ssl_domains = ["*.med-gold.eu"]

key_name = "stage-medgold"

region = "eu-west-1"

profile = "medgold"

bucket = "medgold-config"

account_id = "284176251738"

instance_type = "t2.small"

cidr_block = "10.0.0.0/16"

public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

enable_nat_gateway = true

redondancy = false

azs = ["eu-west-1a", "eu-west-1b"]

rds_master_password = "**********"

rds_instance_class = "db.t2.small"

