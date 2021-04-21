# Makes sure that we are using a pinned version of the provider

terraform {
  required_version = "~>0.13"
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
} 

#Gets the region from the calling provider and outputs it

data "aws_region" "current" {}

output currentregion {
    value = data.aws_region.current.name
}