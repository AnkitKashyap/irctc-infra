resource "aws_instance" "webserver" {
    ami = "${var.ami_id}"
    availability_zone = "${element(var.azs, count.index)}"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.terrakey.id}"
    vpc_security_group_ids = ["${aws_security_group.web.id}"]
    subnet_id = "${element(aws_subnet.Web-Subnet.*.id, count.index)}"
    source_dest_check = false
    count = 0
    tags {
        Name = "${var.name}-Web-Server-${var.count}"
    }
}
resource "aws_instance" "jhserver" {
    ami = "${var.jh_ami_id}"
    availability_zone = "${element(var.azs, count.index)}"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.terrakey.id}"
    vpc_security_group_ids = ["${aws_security_group.bastion.id}"]
    subnet_id = "${element(aws_subnet.Jh-Subnet.*.id, count.index)}"
    source_dest_check = false
    count = "${var.jh-count}"
    tags {
        Name = "${var.name}-JH-Server-${var.count}"
    }
}
