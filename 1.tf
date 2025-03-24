provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0f9de6e2d2f067fca"  # ✅ Updated AMI ID
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
