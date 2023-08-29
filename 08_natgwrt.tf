resource "aws_route_table" "lyh_natgwrt" {
  vpc_id = aws_vpc.lyh_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.lyh_natgw.id
  }

  tags = {
    Name = "lyh-natgwrt"
  }
}
