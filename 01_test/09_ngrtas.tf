resource "aws_route_table_association" "sdkim_ngrtas_wasa" {
  subnet_id      = aws_subnet.sdkim_wasa.id
  route_table_id = aws_route_table.sdkim_ngrt.id
}

resource "aws_route_table_association" "sdkim_ngrtas_wasc" {
  subnet_id      = aws_subnet.sdkim_wasc.id
  route_table_id = aws_route_table.sdkim_ngrt.id
}

resource "aws_route_table_association" "sdkim_ngrtas_dba" {
  subnet_id      = aws_subnet.sdkim_dba.id
  route_table_id = aws_route_table.sdkim_ngrt.id
}

resource "aws_route_table_association" "sdkim_ngrtas_dbc" {
  subnet_id      = aws_subnet.sdkim_dbc.id
  route_table_id = aws_route_table.sdkim_ngrt.id
}