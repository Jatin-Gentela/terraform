

variable "user_names" {
  type    = bool 
  default = true
}

variable "user_names1" {
  type    = list 
  default = ["durga","lalit","jatin"]
}

resource "aws_iam_user" "users" {
  count = var.user_names ? 3 : 0
  name  = var.user_names1[count.index]
}





 