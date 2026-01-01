terraform {
  backend "s3" {
    bucket         = "cn-web-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-locks"
    encrypt   = true
  }
}