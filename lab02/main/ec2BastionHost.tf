resource "aws_instance" "bastionHost_instance" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id = module.network.public_subnet_1
  key_name = aws_key_pair.tf-key-pair.id
  

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory"
  }



  user_data = <<-EOF
              #!/bin/bash
                echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ubuntu/private_key.pem
                chmod 400 private_key.pem
                sudo apt update -y
                sudo apt install mysql-client-core-8.0 
                sudo apt install redis -y 
             EOF

  tags = {
    Name = "bastionHost_instance"
  }
}

# terraform workspace select 
#  ssh -i "tf-key-pair.pem" ubuntu@44.202.86.170    -> bastion host
#  mysql -h terraform-20230416015606982900000003.cwmb0hpfu4sv.us-east-1.rds.amazonaws.com -P 3306 -u root -p 
#  redis-cli -h redisdb.tvbzrl.0001.use1.cache.amazonaws.com -p 6379 