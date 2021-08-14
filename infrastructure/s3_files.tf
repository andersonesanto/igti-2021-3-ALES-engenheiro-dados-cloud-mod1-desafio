resource "aws_s3_bucket_object" "job_glue_code" {
  bucket = aws_s3_bucket.datalake.id
  key    = "code/gluejob/edc-mod1-desafio-censo-matriculas-job-csv2parquet.py"
  acl    = "private"
  source = "../code/gluejob/edc-mod1-desafio-censo-matriculas-job-csv2parquet.py"
  etag   = filemd5("../code/gluejob/edc-mod1-desafio-censo-matriculas-job-csv2parquet.py")
}

