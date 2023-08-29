resource "aws_ami_from_instance" "sdkim_ami" {
  name               = "sdkim-ami"
  source_instance_id = aws_instance.sdkim_weba.id
  depends_on = [
    aws_instance.sdkim_weba
  ]

  tags = {
    Name = "sdkim-ami"
  }
}
