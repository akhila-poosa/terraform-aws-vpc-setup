variable "vpc_cidr"{
    type    = string
    description = "please provide vpc cidr"
}

variable "project_name"{
    type = string
}

variable "environment"{
    type = string
}

variable "vpc_tags"{
    type = string
    default = {}
}
    
