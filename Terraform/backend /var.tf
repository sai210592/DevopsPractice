variable "region" {

    description = "mention the region name"
    default = "ap-south-1"
}

variable "instance_type" {

   #description = "enter the instance type"
   default =  "t2.micro"
}

variable "instances_name" {
  
#   type = map(object({
#   instances_name =string

   type= map(string)
}