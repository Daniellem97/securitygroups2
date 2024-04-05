terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
  }
}

provider "aws" {
  assume_role_with_web_identity {
    role_arn = var.aws_role_arn
    web_identity_token_file = "/mnt/workspace/spacelift.oidc"
  }
}

resource "aws_s3_bucket" "asfdgfds2" {
  bucket = "asfdgfds234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
