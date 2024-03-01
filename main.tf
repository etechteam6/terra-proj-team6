terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
# !!Use your own access and secret keys!!
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "../modules/vpc"
}

module "server" {
  source = "../modules/server"
  main_vpc_id = module.vpc.main_vpc_id
  web_subnet_id = module.vpc.web_subnet_id
}