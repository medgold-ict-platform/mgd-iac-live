

# Generate an AWS provider block
# generate "provider" {
# path      = "provider.tf"
# if_exists = "overwrite_terragrunt"
# #   contents  = <<EOF
# provider "aws" {
#   region = "${get_env("TF_VAR_region", "eu-west-1")}"
#   # Only these AWS Account IDs may be operated on by this template
#   allowed_account_ids = ["${get_aws_account_id()}"]
#   version = "~> 2"
# }
# provider "aws" {
#   alias   = "us-east-1"
#   region  = "us-east-1"
#   version = "~> 2"
# }
# EOF
# }
remote_state {
  backend = "s3"

  config = {
    encrypt = true
    bucket  = "${get_env("TF_VAR_customer", "unknown")}-${get_aws_account_id()}-${get_env("TF_VAR_environment", "exp")}-${get_env("TF_VAR_project", "example")}-tf"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "${get_env("TF_VAR_aws_region", "eu-west-1")}"

    s3_bucket_tags = {
      Name        = "${get_env("TF_VAR_customer", "unknown")}-${get_aws_account_id()}-${get_env("TF_VAR_environment", "exp")}-${get_env("TF_VAR_project", "example")}-tf"
      Environment = "${get_env("TF_VAR_environment", "exp")}"
      # Environment = "test"
      Project  = "${get_env("TF_VAR_project", "exp")}"
      Customer = "${get_env("TF_VAR_customer", "exp")}"
    }
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

locals {
  default_yaml_path = find_in_parent_folders("empty.yaml")
}

inputs = merge(
  yamldecode(
    file(find_in_parent_folders("global.yaml", local.default_yaml_path)),
  ),
  yamldecode(
    file(find_in_parent_folders("env.yaml", local.default_yaml_path)),
  ),
  yamldecode(
    file(find_in_parent_folders("region.yaml", local.default_yaml_path)),
  )
)
#https://github.com/gruntwork-io/terragrunt-infrastructure-live-example
