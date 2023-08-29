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

resource "aws_instance" "sdkim_weba" {
  ami                         = "ami-084e92d3e117f7692"
  instance_type               = "t2.micro"
  key_name                    = "sdkim1"
  vpc_security_group_ids      = [aws_security_group.sdkim_sg.id]
  availability_zone           = "ap-northeast-2a"
  associate_public_ip_address = true
  private_ip                  = "10.0.0.11"
  subnet_id                   = aws_subnet.sdkim_weba.id
  user_data = file("./install.sh")
/*
  user_data =<<eof
    #! /bin/bash
    yum install -y httpd
    echo 'hello terraform' > /var/www/html/index.html
    systemctl enable --now httpd
    eof
    
*/
  tags = {
    Name = "sdkim-weba"
  }
}

output "ec2_ip" {
  value = aws_instance.sdkim_weba.public_ip
}
