resource "aws_instance" "joseth_ec2" {
  count         = var.instanceCount
  ami           = var.amiid
  instance_type = "t2.micro"
  tags = {
    # "Name" = "Joseth_EC2_${count.index + 1}"
    "Name" = "Joseth ${var.tags[count.index]}"
    # "Name" = var.tags[count.index]

  }
}

output "joseth_ec2ipaddress" {
  value = aws_instance.joseth_ec2[0].public_ip
}

output "joseth_ec2privateipaddress" {
  value = aws_instance.joseth_ec2[*].private_ip
}