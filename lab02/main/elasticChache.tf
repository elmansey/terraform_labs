resource "aws_elasticache_cluster" "aws_elasticache_db" {
  cluster_id               = "redisdb"
  engine                   = "redis"
  engine_version           = "6.x"
  node_type                = "cache.t4g.micro"
  num_cache_nodes          = 1
  parameter_group_name     = "default.redis6.x"
  port                     = var.REDIS_PORT
  subnet_group_name        = aws_elasticache_subnet_group.elasticachesubnetgroup.name
  security_group_ids       = [aws_security_group.elasticCache_sg.id]
  tags = {
    Name = "aws_elasticache_db"
  }
}
