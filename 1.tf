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
  ami           = "ami-0f9de6e2d2f067fca"  # ✅ Use the correct AMI ID
  instance_type = var.instance_type        # ✅ Dynamically set from Spacelift

  tags = {
    Name = var.instance_name  # ✅ Uses the instance name from Spacelift
  }
}
