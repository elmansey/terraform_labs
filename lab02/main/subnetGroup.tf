resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [module.network.private_subnet_1, module.network.private_subnet_2]

  tags = {
    Name = "rds_subnet_group"
  }
}


resource "aws_elasticache_subnet_group" "elasticachesubnetgroup" {
  name       = "elasticachesubnetgroup"
  subnet_ids = [module.network.private_subnet_1, module.network.private_subnet_2]
}