data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "access" {
  key_name   = "stackstorm-access-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIHwoa+/KTmLIgMDK2fmRoyn9cHGpSiQbGNZcAfjgKS05LjgRttfJGikCIv6IzHQllswirUvh5dch1ZDTPwDKD2nuVXZTJsCzIzliSvrGwsWVzPw8Jl+dntr92yIo0bnqxqKVJKxe35XGIvWMK4EPbQUxZd7BQLKafIbOdf3p8Ojlu0/kuawUtt+ipVgRNc2t4zz7MbOMulhZyzgo75+stquFl4fcc/w901+WY4+uiGdeAk6mRo3qyQ9WQNH8ZfRb6YIZxQJe2cCQ/nFQ3+d/7vxzaf8ihDUv5RuHRgEoyLyfd+vixlPZoZzncX0Dt/tFK1fysQ8jLB1hhJm/mczjazMYhRoKOfAcpYSYROGCTjOpAryo96xe9s4fQOAtfbzx5Baf8p9qZyWR0DVZRHPofaGvEeblLBipDI+H7iGS0f6sDJEVnmaqoMvU4I0X4mnOw8fR9jf5z29a1zpXwWXvzMh7qoMuowdY6TftGcNhdkF6jufZdTZ9f+ujzFBw0rjM= philh@Phillyps-MacBook-Pro.local"
}

resource "aws_instance" "stackstorm-ec2-instance" {
    ami           = data.aws_ami.ubuntu.id
    instance_type = "t2.medium"

    security_groups = ["${aws_security_group.stackstorm-sg.id}"]
    subnet_id = "${aws_subnet.subnet-1.id}"
    key_name = "${aws_key_pair.access.key_name}"

    tags = {
        Name = "Stackstorm"
    }
}