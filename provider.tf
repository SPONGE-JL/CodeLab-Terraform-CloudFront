# ========================================
# // Configure the Backend
# ========================================
terraform {
  required_version = ">=v1.3.0"

  # ? Ref. https://developer.hashicorp.com/terraform/language/settings/backends/s3
  backend "s3" {
    region  = "ap-northeast-2"
    bucket  = "codelab-terraform-backend-since-230224-120938"
    key     = "codelab/cloudfront-for-next-js/terraform.tfstate"
    encrypt = true
  }

  # ? Ref. https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55.0"
    }
  }
}

# ========================================
# // Configure the Provider
# ========================================
provider "aws" {
  region = "ap-northeast-2"
}

provider "aws" {
  alias  = "acm_provider"
  region = "ap-northeast-2"
}
