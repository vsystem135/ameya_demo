terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
/*
  backend "s3" {
    # Optional if you store Terraform state remotely
  }
*/
}

provider "aws" {
  region = "ap-south-1"
}
/*
resource "aws_s3_bucket" "secure_bucket" {
  bucket = "v3system-secure-bucket-${random_id.suffix.hex}"

  tags = {
    Name        = "SecureBucket"
    Environment = "GitHubActions"
  }
}

resource "aws_s3_bucket_public_access_block" "secure_bucket_block" {
  bucket                  = aws_s3_bucket.secure_bucket.id
  block_public_acls        = true
  block_public_policy      = true
  ignore_public_acls       = true
  restrict_public_buckets  = true
}

resource "random_id" "suffix" {
  byte_length = 4
}
*/