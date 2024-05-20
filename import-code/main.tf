resource "aws_instance" "web" {
  ami                                  = "ami-04ff98ccbfa41c9ad"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1d"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress1"
  monitoring                           = false
  security_groups                      = ["launch-wizard-5"]
  subnet_id                            = "subnet-0097a23691bd4499c"
  tags = {
    Name = "webserver"
  }
}