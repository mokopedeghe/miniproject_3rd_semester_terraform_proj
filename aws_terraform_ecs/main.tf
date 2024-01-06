# Configure AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region    = var.region
  //shared_credentials_files = "../.aws/credentials"
    //profile   = "terraform-user"
}

# Create VPC
module "vpc" {
  source                        = "../modules/vpc"
  region                        = var.region
  project_name                  = var.project_name
  cidr_block                    = var.cidr_block
  public_subnet_az1_cidr        = var.public_subnet_az1_cidr
  public_subnet_az2_cidr        = var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr   = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr   = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr  = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr  = var.private_data_subnet_az2_cidr

}

