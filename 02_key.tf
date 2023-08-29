/*
resource "aws_key_pair" "lyh_key" {
  key_name   = "${var.tag}-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmQ6UXzSUDsUABb5qPyQLrmIOkG4KynqZ1txpP9NMvNE8eIf4ZCjlTo/minkOoqBkjGjpu0q4TzHoTxKbbECEax3Dz6ZXzNdU6hRZVhKK9zqTlp9VacvIx0IQfm3DIXWD4UpqSj1qGLCZyeNG8ew2QivfvYW1Sx2Zw7CnB/fbytum/YB7T/ha940v5O1LcueY8C+iyroKcm1wFAN8ssXVRj6H0/hm9Kt5GZqXxZWX9iAfPaSebATmTY/zfO+63F3cAk+KXLRv6k7kBlzEF+U4GPg207gK9hDWLqhMq3OpPiykH63aItdCNlzVBg0zQMEex8O+tFW9tuWH43+PX4X3WlRS3JBj0nL0L81C1RLuZvEXbaOsyJEwK/LorTVblimplblEx6/HVVP6RWHPL/cOc7r7nQnVlguCli0VXVz4DawjFx/sASKja7x0r3rLbWP5yoG5BM4bhhk2mzbOt/KY26H4h0/vgEdnovV5PdkIFXCtJbityIwFSaUo9f/EWWtU="
}
*/

resource "aws_key_pair" "lyh_key1" {
  key_name   = "${var.tag}-key1"
  public_key = file("./lyh.pub")
}
