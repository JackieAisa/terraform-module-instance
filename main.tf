provider "aws" {
  region = "us-east-1"
} 

resource "aws_instance" "web" {
   ami = "ami-0c614dee691cbbf37"
   instance_type = var.instance_type
   user_data = file("apache.sh")

   tags = {
    Name = var.name
  }
}