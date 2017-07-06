variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "ami_id" { default = "ami-d6f38cb9" }
variable "jh_ami_id" { default = "ami-3c0e7353" }
variable "vpc_cidr" { default = "172.16.32.0/26" }
variable "name" {
 default = "irctc"
}
variable "count"{
 default = 2
}
variable "jh-count"{
 default = 1
}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["ap-south-1a", "ap-south-1b" ]
}
variable "subnet" {
  description = "Define cidrs for subnet"
  type = "list"
  default = ["172.16.32.0/28", "172.16.32.16/28" ]
}
variable "Jh-subnet" {
  description = "Define cidrs for JumpHost  subnet"
  type = "list"
  default = ["172.16.32.32/28", "172.16.32.48/28" ]
}
