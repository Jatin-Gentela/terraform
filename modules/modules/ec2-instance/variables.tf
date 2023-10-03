variable "ami" {
    description = "EC2 AMI ID"
    type = string
}

variable "instance_type" {
    description = "EC2 Instance type"
    type = string
}

variable "tags" {
    description = "Tags for the EC2 instance"
    type = map(string)
}