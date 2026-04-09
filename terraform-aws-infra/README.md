# Simple Terraform AWS Infra (Assignment Version)

This is intentionally a study/assignment setup, not a production architecture.

This project creates a basic AWS setup using Terraform:

- VPC with 2 public and 2 private subnets
- Application Load Balancer
- ECS Fargate service (running `nginx:latest` by default)
- RDS MySQL database
- IAM roles and security groups

The goal is to keep things simple and mostly default for learning.
For simplicity, ECS tasks run in public subnets with public IPs.

## Files

- `main.tf`: AWS provider
- `variables.tf`: minimal input variables
- `vpc.tf`: VPC, subnets, routes
- `security_groups.tf`: ALB, ECS, RDS security groups
- `iam.tf`: ECS task execution role
- `alb.tf`: ALB, target group, listener
- `ecs.tf`: ECS cluster, task definition, service
- `rds.tf`: DB subnet group and RDS instance
- `outputs.tf`: useful output values

## Required Input

Only one value is required:

- `db_password`

Create a `terraform.tfvars` file:

```hcl
db_password = "YourSecurePassword123!"
```

Optional values (already have defaults):

- `aws_region` (default: `ap-south-1`)
- `project_name` (default: `myapp`)
- `container_image` (default: `nginx:latest`)
- `container_port` (default: `8080`)

## Run

```bash
terraform init
terraform plan
terraform apply
```

## Outputs

After apply:

- ALB DNS name
- RDS endpoint
- ECS cluster name

## Destroy

```bash
terraform destroy
```
