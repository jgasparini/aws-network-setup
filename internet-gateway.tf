# Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.default.id}"

  tags {
    Name = "Default VPC IGW"
    Owner = "${var.aws_tag_owner}"
  }
}