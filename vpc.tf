resource "aws_vpc" "main"{
    cidr_block  = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = merge(   #merge() takes two or more maps and combines them into one final map.
        local.common_tags,
        {
            Name = local.common_name_suffix
        }
    )

}