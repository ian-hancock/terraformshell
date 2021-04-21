# Makes sure that we are using a pinned version of the provider

terraform {
  required_version = "~>0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2"
    }

  }
}

#Gets the region from the calling provider and outputs it

data "aws_region" "current" {}

output currentregion {
    value = data.aws_region.current.name
}