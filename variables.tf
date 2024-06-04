# variables.tf
variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    "Project" = "Terraform VPC"
    "Environment" = "Dev"
  }
}
