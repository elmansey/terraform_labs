resource "aws_instance" "application_instance_1" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_and_port_3000.id]
  subnet_id = aws_subnet.private_subnet_1.id
  key_name = aws_key_pair.tf-key-pair.id

  tags = {
    Name = "application_instance_1"
  }
}

resource "aws_instance" "application_instance_2" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_and_port_3000.id]
  subnet_id = aws_subnet.private_subnet_2.id
  key_name = aws_key_pair.tf-key-pair.id

  tags = {
    Name = "application_instance_2"
  }
}