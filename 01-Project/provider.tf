terraform {
  required_version = " ~> 1.14.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }

  }
  backend "s3" {
    bucket = "qunatam-vector-73d70ea155eb"
    key    = "01-Project/terraform.tfstate"
    region = "us-west-2"
  }
}


provider "aws" {
  region     = "us-west-2"
}
