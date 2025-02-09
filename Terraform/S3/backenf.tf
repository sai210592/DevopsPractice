terraform {
  backend "s3" {
    bucket         = "sai210592"
    key            = "prod/ec2.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "state-locking"

  }
}
