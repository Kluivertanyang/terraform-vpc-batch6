variable region {
    type = string
}

variable vpc_cidr {
    type = string
}

variable ip_on_launch {
    type = bool
}

variable port {
    type = list
}

variable subnet {
    type = list(objects( {
    cidr = string
    subnet_name = string
    }))
}