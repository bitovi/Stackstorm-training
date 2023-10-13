resource "aws_vpc" "stackstorm-env" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "stackstorm-env"
  }
}

resource "aws_eip" "ip-stackstorm-env" {
  instance = "${aws_instance.stackstorm-ec2-instance.id}"
  domain = "vpc"
}