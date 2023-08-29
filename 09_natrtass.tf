resource "aws_route_table_association" "lyh_natrtass" {
  count = 2
  subnet_id      = aws_subnet.lyh_was[count.index].id
  route_table_id = aws_route_table.lyh_natgwrt.id
}