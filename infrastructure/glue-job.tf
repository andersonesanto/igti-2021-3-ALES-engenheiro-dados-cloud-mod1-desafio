resource "aws_cloudwatch_log_group" "ecd-mod1-desafio-censo" {
  name              = "ecd-mod1-desafio-censo-matriculas"
  retention_in_days = 3
}

resource "aws_glue_job" "edc-mod1-desafio-censo-matriculas" {
  name         = "edc-mod1-desafio-censo-matriculas-job-csv2parquet"
  role_arn     = aws_iam_role.glue_role.arn
  glue_version = "2.0"
  default_arguments = {
    "--continuous-log-logGroup"          = aws_cloudwatch_log_group.ecd-mod1-desafio-censo.name
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-continuous-log-filter"     = "true"
    "--enable-metrics"                   = ""
  }
  command {
    script_location = "s3://${aws_s3_bucket.datalake.bucket}/code/gluejob/edc-mod1-desafio-censo-matriculas-job-csv2parquet.py"
  }
}

