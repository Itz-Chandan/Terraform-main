resource "local_file" "devops" {
  #   filename = "/home/ubuntu/Terraform-main/terraform-variables/devops_test.txt"
  filename = var.file_list[0]
  ##  content = "This is a devops test file"
  content = var.content_map["content1"]
}

resource "local_file" "devops-var" {
  #    filename = var.filename
  filename = var.file_list[1]
  ##     content = var.content
  content = var.content_map["content2"]
}

output "devops_op" {
  value = var.devops_op_trainer
}

output "aws_ec2_instance" {
  value = var.aws_ec2_object
} 

output "tf_batch_students" {
  value = var.no_of_students
}
