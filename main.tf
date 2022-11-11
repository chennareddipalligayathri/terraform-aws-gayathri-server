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
resource "aws_instance" "myinstance" {
  instance_type = var.hw
  ami           = var.ami
  subnet_id     = aws_subnet.mysubnet.id
  tags = {
    Name = var.servername
    env  = "test"
  }
}
