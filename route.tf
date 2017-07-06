resource "aws_route_table" web-rt {
 vpc_id = "${aws_vpc.main.id}"
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw-test.id}"
  }
 tags {
        Name = "${var.name}-web-rt"
    }
}
 resource "aws_route_table_association" "a" {
  subnet_id   = "${element(aws_subnet.Web-Subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.web-rt.id}"
  count = "${var.count}" 
}
resource "aws_route_table" jh-rt {
 vpc_id = "${aws_vpc.main.id}"
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw-test.id}"
  }
 tags {
        Name = "${var.name}-jh-rt"
    }
}
 resource "aws_route_table_association" "b" {
  subnet_id   = "${element(aws_subnet.Jh-Subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.jh-rt.id}"
  count = "${var.jh-count}" 
}
