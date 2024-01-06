# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "altschool-aws-terraform-remote-state"
    key       = "aws_terraform_ecs.tfstate"
    region    = "us-east-1"
    //profile   = "terraform-user"
  }
}