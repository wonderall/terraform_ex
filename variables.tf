variable "region" {
  type        = string
  description = "region name"
  default     = "ap-northeast-2"
}

variable "cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "tag" {
  type = string
  default = "lyh"
}