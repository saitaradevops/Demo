terraform {
  backend "s3" {
    bucket         = "mydemo-tfstate"
    region         = "us-east-1"
    key            = "backend.tfstate"
    dynamodb_table = "mydemo"
  }
}