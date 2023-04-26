resource "aws_security_group" "dev-grafana-sg" {
  name        = "dev-grafana-sg"
  description = "this is using for securitygroup"
  vpc_id      = "vpc-0d67a83dea115c0e7"

  ingress {
    description = "this is inbound rule"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }
   ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dev-grafana-sg"
  }
}