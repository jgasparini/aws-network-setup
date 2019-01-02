# Define our VPC
resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "default-vpc"
    Owner = "${var.aws_tag_owner}"
  }
}
output "default_vpc_id" {
  value = "${aws_vpc.default.id}"
}