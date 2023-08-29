resource "aws_autoscaling_attachment" "lyh_asatt" {
  autoscaling_group_name = aws_autoscaling_group.lyh_autoscaling_gr.id
  lb_target_group_arn = aws_lb_target_group.lyh_albtg.arn
  
}