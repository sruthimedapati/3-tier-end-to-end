terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "sruthiawsbackend"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}