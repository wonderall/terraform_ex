resource "aws_key_pair" "sdkim_ssh" {
  key_name   = "sdkim"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDHvSl3B6txrPAeGgDAHUURc1uZeS+aNB8KHBmTmR/2g6DXu9+TXRHONDjrxCHIDJcgqsj220FpdR+SMgi2RDSdMqgUTaZYBp4vroS7LhAykG6KiY95px7u1S5QKUvObBaon49jZrEb5BGUHnJJkWVu0szKktadKvYOgCZ0x4WEJ3xZuN5+821gXju64pzNCUcdFkn/Ey/z3QzIfmaU1GeP7KDgVy4jeNjZuG5lhvbS79Pat2/wEfkJc7Dlza330GrYoVH2ExnKsTxKSQe6pAwl0wxB0k0gJDdx1SbzlweiajxEIc5vKHFfksRv4YsKZ1I0/HtCWUEb8OXjWPUHXOJQ0h6aogPwXjuuNsSocdn5tbdc2dRe4KsdfzhdL3Qtk5k0IejKk5iUUnuY4udmw082vaRCpUXvy2J1xyUawJIt2xipGzsb3Ku3WF7bcnyDjMQIvC+p2hwICQi8tHud+iOwxJiAxYT3epkqCd79LWgrcwbuVw/mxLtwoNeKXZFfN1U="
}

resource "aws_key_pair" "sdkim1_ssh" {
  key_name   = "sdkim1"
  public_key = file("../../users/etv/.ssh/sdkim.pub")
}
