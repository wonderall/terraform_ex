resource "aws_lb" "lyh_alb" {
  name = "lyh-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.lyh_sg.id]
  subnets = [aws_subnet.lyh_was[0].id,aws_subnet.lyh_was[1].id]

  tags = {
    Name = "lyh-alb"
  }
}

output "alb_dns_name"{
    value = aws_lb.lyh_alb.dns_name
}