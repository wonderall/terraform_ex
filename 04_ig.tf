resource "aws_internet_gateway" "lyh_ig" {
  vpc_id = aws_vpc.lyh_vpc.id

  tags = {
    Name = "lyh-ig"
  }
}
