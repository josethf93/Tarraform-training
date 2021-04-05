provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "joseth_ec2" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    tags = {
      "Name" = "joseth"
    }
}

output "joseth_ec2ipaddress" {
    value = aws_instance.joseth_ec2.public_ip
}