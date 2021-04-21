# All bets are off on this one

terraform {} 

#Gets the region from the calling provider and outputs it

data "aws_region" "current" {}

output currentregion {
    value = data.aws_region.current.name
}
