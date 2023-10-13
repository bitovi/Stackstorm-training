resource "aws_internet_gateway" "stackstorm-env-gw" {
    vpc_id = "${aws_vpc.stackstorm-env.id}"
    tags = {
        Name = "stackstorm-env-gw"
    }
}