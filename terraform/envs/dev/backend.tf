terraform {
  backend "s3" {
    bucket         = "voting-app-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"

    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
