provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
  access_key = "access-key"
  secret_key = "secret-key"
}
provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
  access_key = "access-key"
  secret_key = "secret-key"
}
resource "aws_instance" "instance1" {
  provider = aws.us-east-1
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"

  tags = {
    Name = "Development"
  }
}

resource "aws_instance" "instance2" {
  provider = aws.us-east-2
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"

  tags = {
    Name = "Deveops"
  }
}



  