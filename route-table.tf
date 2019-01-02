# Define the route table
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.default.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags {
    Name = "Public Subnet RT"
    Owner = "${var.aws_tag_owner}"
  }
}

# Assign the route table to the public Subnet
resource "aws_route_table_association" "public" {
  count = "${length(var.public_subnet_cidrs)}"

  subnet_id      = "${element(aws_subnet.public.*.id, count.index)}"
  route_table_id = "${aws_route_table.public.id}"
}