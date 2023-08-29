data "aws_ami" "sdkim_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}


output "ami_id" {
    value = data.aws_ami.sdkim_ami.image_id
}

resource "aws_instance" "lyh_ec2" {
  ami = "ami-084e92d3e117f7692"
  instance_type = "t2.small"
  key_name = "lyh-key1"
  vpc_security_group_ids = [aws_security_group.lyh_sg.id]
  availability_zone =  "ap-northeast-2a"
  associate_public_ip_address = true
  private_ip = "10.0.0.11"
  subnet_id = aws_subnet.lyh_pub[0].id
  user_data = file("./install.sh")
  tags = {
    Name = "lyh-web"
  }
}


output "ec2_ip"{
    value = aws_instance.lyh_ec2.public_ip
}