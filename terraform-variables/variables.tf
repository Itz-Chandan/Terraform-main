variable "filename" {
  default = "/home/ubuntu/Terraform-main/terraform-variables/devops-automated.txt"
}

variable "content" {
  default = "This is auto generated from a variable"
}

variable "devops_op_trainer" {}
## export variable
## export TF_VAR_devops_op_trainer=chandan_kumar

variable "content_map" {
  type = map(any)
  default = {
    "content1" = "this is a cool content 1"
    "content2" = "this is a cooler content 2"
  }
}

variable "file_list" {
  type    = list(any)
  default = ["/home/ubuntu/Terraform-main/terraform-variables/file_1.txt", "/home/ubuntu/Terraform-main/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object" {
  type = object({
    name     = string
    instance = number
    keys     = list(string)
    ami      = string
  })

  default = {
    name     = "test_ec2_instance"
    instance = 4
    keys     = ["key1.pem", "key2.pem"]
    ami      = "ubuntu-afed1234"
  }
}

variable "no_of_students" {}
