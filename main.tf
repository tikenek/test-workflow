terraform {
  required_providers {
    aws = {
      version = "2.70.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "tynaresen"
    key            = "mykey/terraform.tfstate"
    region         = "us-east-1"
  }
}

resource "aws_s3_bucket" "terraform_state" {
   bucket = "tynaresen"

   versioning {
     enabled = true
  }
}

