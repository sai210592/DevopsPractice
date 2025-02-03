provider "aws" {

region = var.region

}

resource "aws_instance" "ec2" {
    ami= "ami-08ebc9e780cde07dd"
    instance_type = var.instance_type 
    #count = 10
    for_each = tomap({
    instance1= "sai"
    instance2= "yshnavi"
    instance3= "keerthi"
    instance4= "devansh"
    instance5= "dedeepya"
    instance6= "jignas"
    instance7= "nikhil"
    instance8= "akhil"
    instance9= "abhi"
    instance10= "akshay"

    })

    tags = {

        Name = each.value
    }

}

