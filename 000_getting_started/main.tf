terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

variable "instance_type" {
  type = string
}

locals {
  project_name = "Hatice"
}

resource "aws_instance" "my_server" {
  ami           = "ami-085ad6ae776d8f09c"
  instance_type = var.instance_type

  tags = {
    Name = "MyServer-${local.project_name}"
  }
}

output "instance_ip_addr" {
  value = aws_instance.my_server.public_ip
}
