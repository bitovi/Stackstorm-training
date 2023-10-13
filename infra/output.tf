output "public_dns" {
  value = "${aws_eip.ip-stackstorm-env.public_dns}"
}

output "public_ip" {
  value = "${aws_eip.ip-stackstorm-env.public_ip}"
}

# output "local_ip" {
#     value  = "${local.local_ip}"
# }

# output "vpc_arn" { 
#     value = "${data.aws_vpc.default.arn}"
# }