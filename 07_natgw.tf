resource "aws_eip" "lyh_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "lyh_natgw" {
  allocation_id = aws_eip.lyh_eip.id
  subnet_id     = aws_subnet.lyh_pub[0].id

  tags = {
    Name = "lyh-natgw"
  }
  depends_on = [aws_internet_gateway.lyh_ig]
}


