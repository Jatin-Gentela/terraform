

variable "instance" {
}

locals {
  instance_type = "t2.micro"
  common_tags = {
    Department  = "Development"
    Owner       = "omita"
    Environment = "Development"
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = local.common_tags
}

resource "aws_instance" "web" {
  ami           = var.instance
  instance_type = local.instance_type

  tags = merge(
    local.common_tags,
    {
      Description = "Apache Server"
    }
  )
}

resource "aws_security_group" "my_SG" {
  name        = "my_SG"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-05a5bd49457d641f4"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = local.common_tags
}





 