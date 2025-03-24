provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

resource "aws_instance" "example" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = var.instance_type  # ✅ Takes input from Spacelift only

  tags = {
    Name = var.instance_name
  }
}
