variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports"
  default = [80, 443, 8443, 6443, 8080]
}

resource "aws_security_group" "jatin" {
  name        = "jatin"

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}  