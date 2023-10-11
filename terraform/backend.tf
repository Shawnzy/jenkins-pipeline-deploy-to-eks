terraform {
  backend "s3" {
    bucket = "terraformstate-filebucket"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
