resource "aws_instance" "application" {
  ami                    = "ami-02396cdd13e9a1257"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0bdf70e1168f0ddc6"
  vpc_security_group_ids = [aws_security_group.app-sg.id]
  key_name               = "monitor"
    user_data              = file("app.sh")
     
  tags = {
    Name = "application"
  }
}