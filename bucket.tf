resource "aws_s3_bucket" "figueira-domingos-bucket-backup" {
  bucket = "figueira-domingos-bucket-backup"

  tags = {
    Name        = "Bucket backup"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.figueira-domingos-bucket-backup.id 
  acl    = "private"
}

