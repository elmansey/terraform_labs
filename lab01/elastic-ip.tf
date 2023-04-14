resource "aws_eip" "iti_eip" {
  vpc      = true
  tags = {
    Name = "iti_eip"
  }
}