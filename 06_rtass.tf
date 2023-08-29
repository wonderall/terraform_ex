/*
resource "aws_route_table_association" "sdkim_rtassa" {
  subnet_id      = aws_subnet.sdkim_pub[0].id
  route_table_id = aws_route_table.sdkim_rt.id
}

resource "aws_route_table_association" "sdkim_rtassc" {
  subnet_id      = aws_subnet.sdkim_pub[1].id
  route_table_id = aws_route_table.sdkim_rt.id
}

resource "aws_route_table_association" "sdkim_rtass" {
  count = 2
  subnet_id = "aws_subnet.sdkim_pub${count.index == 0 ? "a" : "c"}.id"
  route_table_id = aws_route_table.sdkim_rt.id
  }
*/

resource "aws_route_table_association" "lyh_rtass" {
  count = 2
  subnet_id      = aws_subnet.lyh_pub[count.index].id
  route_table_id = aws_route_table.lyh_rt.id
}