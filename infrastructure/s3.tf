resource "aws_s3_bucket" "datalake" {
  bucket = var.datalake_s3_bucket
  acl    = "private"

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_object" "raw-data" {
  bucket = aws_s3_bucket.datalake.id
  acl    = "private"
  key    = "raw-data/"
  source = "/dev/null"
}