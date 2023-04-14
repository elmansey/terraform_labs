
locals {
  private_key_base64 = base64encode(tls_private_key.rsa-key.private_key_pem)
}

resource "aws_instance" "bastionHost_instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id = aws_subnet.public_subnet_1.id
  key_name = aws_key_pair.tf-key-pair.id


  user_data = <<-EOF
              #!/bin/bash
                echo '${local.private_key_base64}' | base64 -d > /home/ec2-user/private_key.pem
                chmod 400 private_key.pem
              EOF

  tags = {
    Name = "bastionHost_instance"
  }
}