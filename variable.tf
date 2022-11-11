variable "ami" {
  type = string
  default = "ami-089a545a9ed9893b6"
}
variable "hw" {
  type    = string
  default = "t2.micro"
}
variable "servername" {
  type = string
}
variable "bucket_name" {
  type = string
  default ="gayathri-main-module-bucket"
}
resource "aws_vpc" "myvpc" {
  tags = {
    Name = "Gayathri-VPC"
  }
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "private-Gayathri"
  }
}
