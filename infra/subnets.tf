resource "aws_subnet" "subnet-1" {
  cidr_block = "${cidrsubnet(aws_vpc.stackstorm-env.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.stackstorm-env.id}"
  availability_zone = "ca-central-1a"
}

resource "aws_route_table" "route-table-stackstorm-env" {
    vpc_id = "${aws_vpc.stackstorm-env.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.stackstorm-env-gw.id}"
    }
    
    tags = {
        Name = "stackstorm-env-route-table"
    }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.subnet-1.id}"
  route_table_id = "${aws_route_table.route-table-stackstorm-env.id}"
}