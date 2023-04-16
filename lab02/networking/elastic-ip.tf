resource "aws_eip" "iti_eip" {
  vpc      = true
  tags = {
    Name = "${var.prefix}_eip"
  }
}


