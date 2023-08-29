resource "aws_route_table_association" "sdkim_rtasa" {
  subnet_id      = aws_subnet.sdkim_weba.id
  route_table_id = aws_route_table.sdkim_rt.id
}

resource "aws_route_table_association" "sdkim_rtasc" {
  subnet_id      = aws_subnet.sdkim_webc.id
  route_table_id = aws_route_table.sdkim_rt.id
}
