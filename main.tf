resource "aws_instance" "joseth_ec2" {
    ami = var.amiid
    instance_type = "t2.micro"
    tags = {
      "Name" = "joseth4/6"
    }
}

output "joseth_ec2ipaddress" {
    value = aws_instance.joseth_ec2.public_ip
}

output "joseth_ec2privateipaddress" {
    value = aws_instance.joseth_ec2.private_ip
}