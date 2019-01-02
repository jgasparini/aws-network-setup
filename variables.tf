# Infrastructure provisioning variables
#
# Version 0.1
#
# Nov 2018

# Set default AWS Region to Ireland
variable "aws_region" {
  description = "AWS Region for the VPC"
  default = "eu-west-1"
}

# Set default AWS Owner Tag
variable "aws_tag_owner" {
  description = "AWS Owner Tag"
  default = "Jon Gasparini"
}

# Set default CIDR block for VPC
variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/21"
}

# Set default Availability Zones for Region
variable "availability_zones" {
  description = "AZs in this region to use"
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  type = "list"
}

# Set default public subnets
variable "public_subnet_cidrs" {
  description = "Subnet CIDRs for public subnets (length must match configured availability_zones)"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  type = "list"
}

# Set default private subnets
variable "private_subnet_cidrs" {
  description = "Subnet CIDRs for private subnets (length must match configured availability_zones)"
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  type = "list"
}