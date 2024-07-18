# terraform-vpc-batch6

module "batch6" {
    source = ""
    version = "1.0.0"
    region = "us-east-2"
    vpc_cidr = "10.0.0.0/16"
    ip_on_launch = true
    port = [22, 80, 443]

    subnet = [
        { cdir = "10.0.1.0/24", subnet_name = "kaizen1" },
        { cdir = "10.0.2.0/24", subnet_name = "kaizen2" },
        { cdir = "10.0.3.0/24", subnet_name = "kaizen3" }
    ]
}