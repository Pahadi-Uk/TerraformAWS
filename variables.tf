variable "region" {
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  description = "CIDR block for public subnet in Availability Zone A."
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_a" {
  description = "CIDR block for private subnet in Availability Zone A."
  default     = "10.0.3.0/24"
}

variable "public_subnet_cidr_b" {
  description = "CIDR block for public subnet in Availability Zone B."
  default     = "10.2.1.0/24"
}

variable "private_subnet_cidr_b" {
  description = "CIDR block for private subnet in Availability Zone B."
  default     = "10.0.4.0/24"
}

variable "aws_access_key" {
  description = "The AWS access key used for authentication."
}

variable "aws_secret_key" {
  description = "The AWS secret key used for authentication."
}
