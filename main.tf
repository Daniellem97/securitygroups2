terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

aws = {
region = "us-east-1"
}

resource "aws_s3_bucket" "asfdgfds2" {
  bucket = "asfdgfds234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
