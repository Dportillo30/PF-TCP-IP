locals {
  prefix = "pf-tcpip"
  env    = "dev"
  aws = {
    region = "us-east-1"
  }
  vpc = {
    cidr    = "10.0.0.0/16"
    cidr_subnet_private_1 = "10.0.0.0/24"
  }
}