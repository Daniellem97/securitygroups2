terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1" 
}

resource "aws_security_group" "spacelift_sg" {
  name        = "spacelift-sg"
  description = "Allows communication with Spacelift using fixed IPs"

  vpc_id = data.aws_vpc.default.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = formatlist("%s/32", tolist(data.spacelift_ips.spacelift_public_ips.ips))
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}
