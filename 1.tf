provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
  default     = ""  # Will be overridden by Spacelift
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"  # Default, but should be overridden by Spacelift
}

resource "aws_instance" "example" {
  ami           = "ami-0f9de6e2d2f067fca"  # ✅ Use your provided AMI ID
  instance_type = var.instance_type  # ✅ Terraform variable linked to Spacelift env variable

  tags = {
    Name = var.instance_name
  }
}
