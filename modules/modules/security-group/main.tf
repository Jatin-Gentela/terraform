resource "aws_security_group" "my_sg" {
  name        = var.name
  description = var.description
  vpc_id      = "vpc-05a5bd49457d641f4"

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = var.tags
}