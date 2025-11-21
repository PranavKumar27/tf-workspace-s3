provider "aws" {
  region = "us-east-1"
}
terraform {
  required_version = ">=1.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">=5.30"
    }
  }
}

resource "random_id" "rand_id" {
  byte_length = 10
}

resource "aws_s3_bucket" "tf-bucket-cloud" {
  bucket = "tf-clouds-s3-bucket-${random_id.rand_id.hex}"
}