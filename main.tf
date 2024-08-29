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

resource "aws_s3_bucket" "asfdgfds21" {
  bucket = "asfdgfds2134"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
