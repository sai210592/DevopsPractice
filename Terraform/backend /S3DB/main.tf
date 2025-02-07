provider "aws" {

region = var.region

}

resource "aws_instance" "ec2" {
    ami= "ami-08ebc9e780cde07dd"
    instance_type = var.instance_type 
    #count = 10
    for_each = var.instances_name

    tags = {

        Name = each.value
    }

}
