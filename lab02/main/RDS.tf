data "aws_secretsmanager_secret" "mysql_credentials" {
  arn = var.SECRET_KET_ARN
}

data "aws_secretsmanager_secret_version" "secret_version" {
  secret_id = data.aws_secretsmanager_secret.mysql_credentials.id
}

resource "aws_db_instance" "mysql" {
  db_name                  = "mysqldb"
  engine                   = "mysql"
  engine_version           = "8.0.32"
  instance_class           = "db.t2.micro"
  allocated_storage        = 20
  storage_type             = "gp2"
  username                 = "${jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["username"]}"
  password                 = "${jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["password"]}"
  parameter_group_name     = "default.mysql8.0"
  db_subnet_group_name     = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids   = [aws_security_group.mysql_sg.id]
  
  tags = {
    Name = "mysql-db"
  }
}
