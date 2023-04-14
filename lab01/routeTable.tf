resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.iti_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.iti_gw.id
  }

  tags = {
    Name = "public_route_table"
  }
}


resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.iti_vpc.id

  tags = {
    Name = "private_route_table"
  }
}

# nat 
resource "aws_route" "private_nat_route" {
  route_table_id            = aws_route_table.private_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = aws_nat_gateway.iti_NG.id
}







# route table association 
resource "aws_route_table_association" "public_route_table_association_to_public_subnet_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_table_association_to_public_subnet_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "private_route_table_association_private_subnet_1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_table_association_private_subnet_2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_route_table.id
}

