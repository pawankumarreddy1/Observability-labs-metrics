resource "aws_instance" "grafana" {
  ami                    = "ami-02396cdd13e9a1257"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0bdf70e1168f0ddc6"
  vpc_security_group_ids = [aws_security_group.dev-grafana-sg.id]
  key_name               = "monitor"
    user_data              = file("grafana.sh")
     
  tags = {
    Name = "grafana"
  }
}