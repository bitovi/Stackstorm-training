# Stackstorm-training

## Setting up your own infrastructure
1. **Option 1** is to use the [Bitovi Github action](https://github.com/marketplace/actions/deploy-single-vm-stackstorm-to-aws-ec2) that utilizes Terraform to create an EC2, VPC and security groups and install Stackstorm onto the instance.

2. **Option 2** is to follow the [README](./infra/README.md) instructions found within the `infra/` folder to Spin up an EC2 and install Stackstorm onto the server yourself.

# Github Integration
Community Jira Pack - https://github.com/StackStorm-Exchange/stackstorm-github
Make changes in /opt/stackstorm/configs/github.yaml or use command st2 pack config github

1. Create Personal Token via Github UI (Classic)
    - Select "Repo Access" scope
    - Create

2. Within the Stackstorm UI run a new `Action`
    - `Github > create_file`
    - Content: `This is content`
    - Message: `Craeting file via Github Pack`
    - Path: `st2-testing.md`
    - Repo: <Use your personal repo>
    - User: Name of individual or org housing Repo
    - Author: Firstname Lastname <email used by Github account>
    - branch: (recommended) main

# Jira Integration
1. Community Jira Pack - https://github.com/StackStorm-Exchange/stackstorm-jira

2. Make changes in /opt/stackstorm/configs/jira.yaml or use command st2 pack config jira
    - Create Personal Token
    - Use any of your preference method of authentication in config file, but for this training 
      we used basic "auth_method"
    - Add project key in config file not the project name
    - Use "api_token" value in passowrd field.