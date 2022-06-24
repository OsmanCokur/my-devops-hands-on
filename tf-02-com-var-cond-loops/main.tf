provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

locals {
  mytag = "smn-local-name"
}

resource "aws_instance" "tf-ec2" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  key_name      = "firstkey"    # write your pem file without .pem extension>
  tags = {
    Name = "${local.mytag}-come from locals"
  }
}


resource "aws_s3_bucket" "tf-s3" {
  bucket = "smnckr-tf-test-bucket-addwhateveryouwant"
  tags = {
    Name = "${local.mytag}-come from locals"
  }
}

