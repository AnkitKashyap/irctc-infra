resource "aws_eip" "jh-1" {
    instance = "${aws_instance.jhserver.id}"
    vpc = true
}
