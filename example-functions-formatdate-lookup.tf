locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "us-east-1"
}

variable "ami" {
  type = map
  default = {
    "us-east-2" = "ami-0d406e26e5ad4de53"
    "us-east-1" = "ami-03a6eaae9938c858c"
    "us-west-2" = "ami-0f3769c8d8429942f"
  }
}

resource "aws_instance" "web" {
  ami           = lookup(var.ami,var.region)
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
    owner = "omita"
    Environment = "Development"
  }
}

output "timestamp" {
  value = local.time  
}




 