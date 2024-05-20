data "aws_ami" "ami1" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "demo" {
    ami = data.aws_ami.ami1.id
    instance_type = data.aws_instance.ec21.instance_id
    key_name = data.aws_instance.ec21.key_name
}

data "aws_instance" "ec21" {
  instance_id = "i-0159f3b539910596d"
}
