resource "aws_db_subnet_group" "lyh_dbsg" {
  name       = "lyh-dbsg"
  subnet_ids = [aws_subnet.lyh_db[0].id,aws_subnet.lyh_db[1].id]
}

resource "aws_db_instance" "lyh_resitory" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  db_name = "wordpress"
  identifier = "database-1"
  username = "root"
  password = "VMware1!"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.lyh_dbsg.id
  vpc_security_group_ids = [aws_security_group.lyh_sg.id]
  skip_final_snapshot = true

  tags = {
    Name = "lyh-db"
  }
  
}