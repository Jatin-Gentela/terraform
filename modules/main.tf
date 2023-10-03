module "ec2-instance" {
  source = "./modules/ec2-instance"
  ami = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
  tags = {
    Name = "Jatin's"
    Owner = "Jatin"
    Environment = "Development"
    Team = "Devops"
  }
}

output "instance_id" {
  description = "EC2 instance ID"
  value = module.ec2-instance.instance_id
  
}

  