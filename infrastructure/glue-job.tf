resource "aws_glue_job" "csv_2_parquet" {
  name     = "csv_2_parquet"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake.bucket}/code/gluejob/01_microdados_censo_csv_2_parquet.py"
  }
}

