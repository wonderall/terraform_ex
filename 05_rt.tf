resource "aws_route_table" "lyh_rt" {
  vpc_id = aws_vpc.lyh_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lyh_ig.id
  }

  tags = {
    Name = "lyh-rt"
  }
}
