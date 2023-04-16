# resource "aws_instance" "application_instance_1" {
#   ami           = data.aws_ami.ubuntu.id 
#   instance_type = var.INSTANCE_TYPE
#   vpc_security_group_ids = [aws_security_group.allow_ssh_and_port_3000.id]
#   subnet_id = module.network.private_subnet_1
#   key_name = aws_key_pair.tf-key-pair.id

#   tags = {
#     Name = "application_instance_1"
#   }
# }

# resource "aws_instance" "application_instance_2" {
#   ami           = data.aws_ami.ubuntu.id 
#   instance_type = var.INSTANCE_TYPE
#   vpc_security_group_ids = [aws_security_group.allow_ssh_and_port_3000.id]
#   subnet_id = module.network.private_subnet_2
#   key_name = aws_key_pair.tf-key-pair.id

#   tags = {
#     Name = "application_instance_2"
#   }
# }


