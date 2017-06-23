resource "aws_subnet" "Web-Subnet" {
    count = "${var.count}"
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${element(var.subnet, count.index)}"
    availability_zone = "${element(var.azs, count.index)}"

    tags {
        Name = "${var.name}-Subnet-${count.index}"
    }
}
