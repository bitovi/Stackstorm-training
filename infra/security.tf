resource "aws_security_group" "stackstorm-sg" {
    name = "stackstorm-sg"
    vpc_id = "${aws_vpc.stackstorm-env.id}"
    
    ingress {
        description = "SSH access"
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }

    ingress {
        description = "HTTP access"
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 80
        to_port = 80
        protocol = "tcp"
    }

    ingress {
        description = "HTTPS access"
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 443
        to_port = 443
        protocol = "tcp"
    }
  
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}