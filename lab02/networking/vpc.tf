resource "aws_vpc" "iti_vpc" {
  cidr_block = var.vpc_cider
  enable_dns_hostnames=true
  tags = {
    Name = "${var.prefix}_vpc"
  }
}

