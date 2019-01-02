# Define the public subnets
resource "aws_subnet" "public" {
  count = "${length(var.public_subnet_cidrs)}"

  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidrs[count.index]}"
  availability_zone = "${var.availability_zones[count.index]}"
  tags {
     Name = "Private Subnet ${var.availability_zones[count.index]}"
     Owner = "${var.aws_tag_owner}"
   }
}


# Define the private subnets
resource "aws_subnet" "private" {
  count = "${length(var.private_subnet_cidrs)}"

  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.private_subnet_cidrs[count.index]}"
  availability_zone = "${var.availability_zones[count.index]}"

  tags {
     Name = "Public Subnet ${var.availability_zones[count.index]}"
     Owner = "${var.aws_tag_owner}"
   }
}