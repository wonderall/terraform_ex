resource "aws_ami_from_instance" "lyh_ami" {
  name = "lyh-ami"
  source_instance_id = aws_instance.lyh_ec2.id
  depends_on = [ 
    aws_instance.lyh_ec2
   ]

  tags = {
        Name = "lyh-ami"
    }
}