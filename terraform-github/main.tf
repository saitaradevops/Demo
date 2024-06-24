resource "aws_instance" "test-server" {

  ami           = data.aws_ami.amazon-linux.id
  instance_type = var.instance_type

  tags = {
    Name = var.tag
  }
}