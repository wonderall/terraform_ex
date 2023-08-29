resource "aws_route_table" "sdkim_ngrt" {
  vpc_id = aws_vpc.sdkim_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.sdkim_ng.id
  }

  tags = {
    Name = "sdkim-ngrt"
  }
}
