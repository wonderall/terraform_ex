resource "aws_subnet" "sdkim_weba" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sdkim-weba"
  }
}

resource "aws_subnet" "sdkim_webc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-webc"
  }
}

resource "aws_subnet" "sdkim_wasa" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sdkim-wasa"
  }
}

resource "aws_subnet" "sdkim_wasc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-wasc"
  }
}

resource "aws_subnet" "sdkim_dba" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sdkim-dba"
  }
}

resource "aws_subnet" "sdkim_dbc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-dbc"
  }
}
