variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "ami_id" {}
variable "vpc_cidr" {}
variable "name" {
 default = "irctc"
}
variable "count"{
 default = 2
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
