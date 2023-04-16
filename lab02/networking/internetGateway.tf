resource "aws_internet_gateway" "iti_gw" {
  vpc_id = aws_vpc.iti_vpc.id
  tags = {
    Name = "${var.prefix}_gw"
  }
}
