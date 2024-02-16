terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }
  cloud {
    organization = "wordpress-miniproject"
 
    workspaces {
      name = "wordpress-miniproject"
  }
}
}