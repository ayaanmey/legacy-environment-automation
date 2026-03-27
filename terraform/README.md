# Terraform Linux VM Module

This Terraform configuration provisions a single Linux VM in AWS using a simple root module and a reusable child module. The design is intentionally minimal and focuses on clean structure, sane defaults, environment-specific variables, tagging, and clear outputs.

## How I structured the module

I used a root module plus a child module to keep the configuration easy to understand and easy to extend.

- The root module handles provider configuration, shared variables, environment-specific inputs, and module invocation
- The child module (`modules/linux_vm`) encapsulates the EC2 instance resource and its outputs
- Variables, outputs, and version constraints are separated into dedicated files for readability and maintainability
- Environment-specific values are provided through `terraform.tfvars` rather than being hardcoded in the resource definition

This structure keeps the example simple for the exercise while also reflecting a pattern that can scale in a real environment.

## How I would manage state

For this exercise, Terraform state can be stored locally. In a real environment, I would use remote state instead of local state.

In AWS, I would typically use:
- an S3 bucket for Terraform state storage
- DynamoDB for state locking

This approach would:
- improve collaboration
- reduce the risk of conflicting changes
- make state more durable and recoverable

I would also separate state by environment so development, staging, and production remain isolated from one another.

## How I would scale this to multiple environments

To scale this design across multiple environments, I would:

- keep reusable infrastructure logic inside child modules
- use separate variable files or separate root configurations for dev, staging, and prod
- use separate remote state files or workspaces for each environment
- standardize naming conventions and tagging across all environments
- expand the module over time to include related resources such as networking, security groups, IAM roles, and storage

The goal would be to keep the same clean module structure while making it safe, reusable, and easier to manage across multiple environments.

## How to run it

From the `terraform/` directory:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply