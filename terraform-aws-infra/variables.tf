variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name for resource naming and tagging"
  type        = string
  default     = "myapp"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "container_port" {
  description = "Port on which the container application listens"
  type        = number
  default     = 8080
}

variable "container_image" {
  description = "Docker image URI for ECS task"
  type        = string
  default     = "nginx:latest"
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}
