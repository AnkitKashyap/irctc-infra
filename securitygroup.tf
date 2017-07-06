resource "aws_security_group" "web" {
    name = "web-sg"
    description = "Allow incoming HTTP connections."
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    vpc_id = "${aws_vpc.main.id}"

    tags {
        Name = "${var.name}-websg"
    }
}
resource "aws_security_group" "bastion" {
    name = "jh-sg"
    description = "Allow incoming ssh connection."
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    vpc_id = "${aws_vpc.main.id}"

    tags {
        Name = "${var.name}-jhsg"
    }
}
