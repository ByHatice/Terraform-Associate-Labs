/*
Next time, use the Terraform Cloud block configuration:
terraform {
  cloud {
    organization = "example_corp"
    hostname = "my.terraform-enterprise.host"
    workspaces {
      tags = ["app"]
    }
  }
}
*/

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Learning_Terraform_Hatice"

    workspaces {
      name = "Terraform_example"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.46.0"
    }
  }

  required_version = ">= 1.2.0"
}

locals {
  project_name = "Hatice"
}