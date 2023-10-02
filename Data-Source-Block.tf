data "aws_vpc" "existing" {
  id = "vpc-05a5bd49457d641f4"
}

data "aws_subnet" "existing" {
  vpc_id = data.aws_vpc.existing.id
  tags = {
    Name = "testing"
  }
}

resource "aws_instance" "jatin" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.existing.id

  tags = {
    Name = "jatin"
    Department = "Devops"
    Owner = "omita"
  }
}
 