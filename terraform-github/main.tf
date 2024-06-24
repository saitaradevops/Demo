resource "aws_instance" "test-server" {

  ami           = data.aws_ami.amazon-linux.id
  instance_type = var.instance_type

  tags = {
    Name = var.tag
  }
}


resource "aws_security_group" "test-server-sg" {
  name        = "test-server-sg"
  vpc_id      = var.vpc_id
  subnet_id = var.subnet_id
  tags = {
    Name = "http"
  }
}

resource "aws_vpc_security_group_ingress_rule" "test-server-sg-rule" {
  security_group_id = aws_security_group.test-server-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port   = var.input_port
  ip_protocol = "http"
  to_port     = var.input_port
}
