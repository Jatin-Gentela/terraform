variable "instances" {
  type = map
  default = {
    instance1 = "ami-03a6eaae9938c858c"
    instance2 = "ami-053b0d53c279acc90"
  }
}

resource "aws_instance" "web" {
  for_each = var.instances
  ami           = each.value
  instance_type = "t2.micro"

  tags = {
    Name = each.key
  }
}
  