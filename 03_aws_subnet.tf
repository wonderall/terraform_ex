/*
resource "aws_subnet" "sdkim_puba" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sdkim-puba"
  }
}

resource "aws_subnet" "sdkim_pubc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-pubc"
  }
}
*/

resource "aws_subnet" "lyh_pub" {   # aws_subnet.sdkim_pub[0],sdkim_pub[1]
  count = 2
  vpc_id            = aws_vpc.lyh_vpc.id
  cidr_block        = "10.0.${count.index == 0 ? "0" : "1"}.0/24"
  availability_zone = "ap-northeast-2${count.index == 0 ? "a" : "c"}"

  tags = {
    Name = "sdkim-pub${count.index == 0 ? "a" : "c"}"
  }
}

resource "aws_subnet" "lyh_was" {
  count = 2
  vpc_id            = aws_vpc.lyh_vpc.id
  cidr_block        = "10.0.${count.index == 0 ? "2" : "3"}.0/24"
  availability_zone = "ap-northeast-2${count.index == 0 ? "a" : "c"}"

  tags = {
    Name = "sdkim-was${count.index == 0 ? "a" : "c"}"
  }
}

/*
resource "aws_subnet" "sdkim_wasc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-wasc"
  }
}
*/

resource "aws_subnet" "lyh_db" {
  count = 2
  vpc_id            = aws_vpc.lyh_vpc.id
  cidr_block        = "10.0.${count.index == 0 ? "4" : "5" }.0/24"
  availability_zone = "ap-northeast-2${count.index == 0 ? "a" : "c" }"

  tags = {
    Name = "sdkim-db${count.index == 0 ? "a" : "c" }"
  }
}
/*
resource "aws_subnet" "sdkim_dbc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-dbc"
  }
}
*/