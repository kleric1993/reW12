terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

/*
resource "aws_iam_group" "gp1" {
  name = "Manager"
  lifecycle {
    prevent_destroy = false
  }
}


resource "aws_iam_user" "usr1" {
  name = "Eric1"
  depends_on = [ aws_iam_group.gp1 ]
}
*/

resource "aws_instance" "server1" {
    ami= "ami-04ff98ccbfa41c9ad"
    instance_type = "t2.small"
    key_name = "wordpress1"
    lifecycle {
      create_before_destroy = false
    }
   
  
}
