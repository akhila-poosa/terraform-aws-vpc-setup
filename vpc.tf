resource "aws_vpc" "main"{
    cidr_block  = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = merge(   #merge() takes two or more maps and combines them into one final map.
        var.vpc_tags,   
        local.common_tags,
        {
            Name = local.common_name_suffix
        }
    )

}