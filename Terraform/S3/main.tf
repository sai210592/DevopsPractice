provider "aws" {
  region     = "ap-south-1"
}

resource "aws_s3_bucket" "sai" {
    
    bucket = "sai2105"

}

resource "aws_s3_bucket_ownership_controls" "saiowner" {
  bucket = aws_s3_bucket.sai.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "aclsai" {

  depends_on = [aws_s3_bucket_ownership_controls.saiowner]
  
  bucket = aws_s3_bucket.sai.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.sai.id
  versioning_configuration {
    status = "Enabled"

  }
}
