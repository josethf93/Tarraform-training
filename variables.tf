variable "amiid" {
  description = "AMI ID of the instance"
  default = "ami-0742b4e673072066f"
  type = string
}

variable "instanceCount" {
  description = "Number of instnces to create"
  type = number
  default = 1
}