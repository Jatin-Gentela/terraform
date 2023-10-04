variable "name" {
    description = "Security group for data-base"
    type = string
}

variable "description" {
    description = "Security group for data-base"
    type = string
}

variable "cidr_blocks" {
    description = "who can access our data-base"
    type = list
}
variable "tags" {
    description = "Tags of our data-base"
    type = map(string)
}



