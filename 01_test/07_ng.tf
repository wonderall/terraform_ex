resource "aws_eip" "sdkim_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "sdkim_ng" {
  allocation_id = aws_eip.sdkim_eip.id
  subnet_id     = aws_subnet.sdkim_weba.id

  tags = {
    Name = "sdkim-ng"
  }
}

output "ip" {
  value = aws_eip.sdkim_eip.public_ip
}