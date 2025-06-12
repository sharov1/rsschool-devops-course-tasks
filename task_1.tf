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


terraform {
   backend "s3" {
      bucket = "course-bucket1337"
      key    = "tf-state"
      region = "us-east-1"
  }
}
