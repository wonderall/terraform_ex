terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0" #5.0버전 이상으로
    }
  }
}

provider "aws" {
  region = var.region 
}