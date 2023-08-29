resource "aws_lb_target_group" "lyh_albtg" {
  name = "lyh-albtg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.lyh_vpc.id

  health_check {
    enabled = true
    healthy_threshold = 3
    interval = 5
    matcher = "200"
    path = "/health.html"
    port = "traffic-port"
    timeout = 2
    unhealthy_threshold = 3

  }

  tags = {
    Name = "lyh-albtg"
  }
}