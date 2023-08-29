resource "aws_autoscaling_attachment" "sdkim_asatt" {
  autoscaling_group_name = aws_autoscaling_group.sdkim_atsg.id
  lb_target_group_arn    = aws_lb_target_group.sdkim_albtg.arn
}
