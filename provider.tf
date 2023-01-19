provider "aws" {
  shared_credentials_files = ["/home/mostafa/.aws/credentials"]
  profile                  = "lab"
  region = "us-east-1"
}