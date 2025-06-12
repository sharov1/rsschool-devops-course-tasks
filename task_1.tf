terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket_1337" {
  bucket = "my-tf-test-bucket_1337"

  tags = {
    Name        = "My bucket 1337"
    
  }
}
