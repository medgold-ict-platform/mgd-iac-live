terragrunt = {
  terraform {
    source = "git::ssh://git@bitbucket.org/beetobit/mgd-iac-mods//mgd-dashboard//es?ref=develop"
    # MIGRARE SU https://bitbucket.org/beetobit/terragrunt-aws-es/src
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# dependencies {
#   paths = ["../k8s-cluster-autoscaler"]
# }

es_instance_count = "1"
es_instance_type = "r5.large.elasticsearch"
ebs_volume_size = "30"
es_version = "7.1"
vpc_id = "vpc-3565fc53"
