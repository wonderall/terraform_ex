resource "aws_db_subnet_group" "sdkim_dbsg" {
  name       = "sdkim-dbsg"
  subnet_ids = [aws_subnet.sdkim_dba.id,aws_subnet.sdkim_dbc.id]
}

resource "aws_db_instance" "sdkim_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  db_name                = "wordpress"
  identifier             = "mydb"
  username               = "root"
  password               = "It12345!"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.sdkim_dbsg.id
  vpc_security_group_ids = [aws_security_group.sdkim_sg.id]
  skip_final_snapshot    = true

  tags = {
    Name = "sdkim-db"
  }
}
