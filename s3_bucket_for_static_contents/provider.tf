# ========================================
# // Each module must declare its own provider requirements
# // Ref. https://developer.hashicorp.com/terraform/language/providers/requirements
# ========================================
terraform {
  required_version = ">= v1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55.0"
    }
  }
}

provider "aws" {
  region = var.region
}
