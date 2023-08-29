resource "aws_autoscaling_group" "lyh_autoscaling_gr" {
  name = "lyh-autoscaling-gr"
  min_size = 1
  max_size = 6
  desired_capacity = 1
  health_check_grace_period = 60
  health_check_type = "EC2"
  force_delete = false 
  # vpc_zone_identifier = [aws_subnet.lyh_was[0].id, aws_subnet.lyh_was[1].id]
  vpc_zone_identifier = concat(aws_subnet.lyh_was[*].id)
  launch_template {
    id = aws_launch_template.lyh_lt.id 
    version = "$Latest"
  }
}