terraform {
  required_version = ">= 0.13.1"
  required_providers {
    aws= "~> 4.12.0"
  }
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucketrolanocudotulio"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}