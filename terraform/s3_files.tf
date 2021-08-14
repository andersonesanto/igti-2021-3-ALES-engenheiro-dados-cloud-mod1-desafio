resource "aws_s3_bucket_object" "job_glue_code" {
  bucket = aws_s3_bucket.datalake.id
  key    = "code/gluejob/01_microdados_censo_csv_2_parquet.py"
  acl    = "private"
  source = "../code/gluejob/01_microdados_censo_csv_2_parquet.py"
  etag   = filemd5("../code/gluejob/01_microdados_censo_csv_2_parquet.py")
}

