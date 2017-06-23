resource "aws_instance" "webserver" {
    ami = "${var.ami_id}"
    availability_zone = "${element(var.azs, count.index)}"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.terrakey.id}"
    vpc_security_group_ids = ["${aws_security_group.web.id}"]
    subnet_id = "${element(aws_subnet.Web-Subnet.*.id, count.index)}"
    source_dest_check = false
    count = "${var.count}"
    tags {
        Name = "${var.name}-Web-Server"
    }
}
