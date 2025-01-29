provider "aws" {
  region = "us-east-1"
} 

resource "aws_instance" "web" {
   ami = "ami-0e1bed4f06a3b463d"
   instance_type = var.instance_type
   user_data = file("apache.sh")

   tags = {
    Name = var.name
  }
}