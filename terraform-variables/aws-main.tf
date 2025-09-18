
resource "aws_instance" "my_ec2_instance" {
        count = 4
        ami = "ami-02d26659fd82cf299"
        instance_type = "t2.micro"
        tags = {
               Name = "TerraformLearn"
}
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-learning-123-chandan-2025"

  tags = {
    Name        = "terraform-learning-123-chandan-2025"
    Environment = "Dev"
  }
}


output "ec2_public_ips" {
        value = aws_instance.my_ec2_instance[*].public_ip
}
