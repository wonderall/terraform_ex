resource "aws_launch_template" "lyh_lt" {
  name = "lyh-lt"
  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = 10
      volume_type = "gp2"
    }

  }
  image_id = aws_ami_from_instance.lyh_ami.id
  instance_type = "t2.micro"
  key_name = "lyh-key1"
  vpc_security_group_ids = [aws_security_group.lyh_sg.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "lyh-temp"
    }
  }
  # user_data = filebase64("${path.module}/install.sh")
}