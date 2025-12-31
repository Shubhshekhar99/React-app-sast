terraform {
  backend "s3" {
    bucket         = "cn-web-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    # Replace dynamodb_table with:
    use_lockfile   = true
  }
}