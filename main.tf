
resource "aws_instance" "myinstance" {
  instance_type = var.hw
  ami           = var.ami
  tags = {
    Name = var.servername
    env  = "test"
  }
}
