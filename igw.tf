resource "aws_internet_gateway" "igw-test" {
    vpc_id = "${aws_vpc.main.id}"
    tags {
        Name = "${var.name}-igw"
    }
}
