## README
#### What is this repository for?
This repo designs the **MEDGOLG infrastructure**. 
It creates a vpc which is used to isolate the ElasticSearch cluster, here data is then loaded to populate the dashboard.
It also creates the Elasticsearch cluster that serves the dashboard

#### How to use:
##### Run the following commands:

* `terragrunt init`:
this command is used to initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control.

* `terragrunt plan`:
this command creates an execution plan. By default, creating a plan consists of:
    - Reading the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date.
    - Comparing the current configuration to the prior state and noting any differences.
    - Proposing a set of change actions that should, if applied, make the remote objects match the configuration.

* `terragrunt apply`: 
this command executes the actions proposed in a Terraform plan.