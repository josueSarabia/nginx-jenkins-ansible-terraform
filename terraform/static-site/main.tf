provider "aws" {
    region = var.region
    profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "devops"
    vpc_security_group_ids = [ "sg-049217cad3694b278", "sg-0b9bd9a1a03eebd11" ]

    tags = {
        Name = var.name
        group = var.group
    }
}