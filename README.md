# Stackstorm-training

## Setting up your own infrastructure
1. **Option 1** is to use the [Bitovi Github action](https://github.com/marketplace/actions/deploy-single-vm-stackstorm-to-aws-ec2) that utilizes Terraform to create an EC2, VPC and security groups and install Stackstorm onto the instance.

2. **Option 2** is to follow the [README](./infra/README.md) instructions found within the `infra/` folder to Spin up an EC2 and install Stackstorm onto the server yourself.