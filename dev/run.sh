export TF_VAR_customer=mdg
export TF_VAR_environment=dev
export TF_VAR_project=medgold
export TF_VAR_region=eu-west-1
export TF_VAR_project_full_name=medgold
export TF_VAR_key_name=prod-medgold
export TF_VAR_azs='["eu-west-1a", "eu-west-1b","eu-west-1c"]'
export TF_VAR_vpc_azs='["eu-west-1a", "eu-west-1b","eu-west-1c"]'
export TF_VAR_account_id=$(aws sts get-caller-identity --output text --query 'Account')
export TF_VAR_bucket=mgd-284176251738-prod-medgold-tf
export TF_VAR_tfstate_global_bucket=mgd-284176251738-prod-medgold-tf
