# Build EC2
```bash
tf apply
```

# Get EC2 public_dns
```bash
tf output
```

# Log in
```bash
ssh ubuntu@<public_dns>
```

# Install Stackstorm
```bash
bash <(curl -sSL https://stackstorm.com/packages/install.sh) --user=st2admin --password=Ch@ngeMe
```