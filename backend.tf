terraform {
  backend "s3" {
    bucket = "wordpress-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}