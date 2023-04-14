resource "aws_nat_gateway" "iti_NG" {
  allocation_id = aws_eip.iti_eip.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "iti_NG"
  }

  depends_on = [aws_internet_gateway.iti_gw]
}