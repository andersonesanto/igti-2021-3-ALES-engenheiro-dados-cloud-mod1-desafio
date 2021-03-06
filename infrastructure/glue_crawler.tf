resource "aws_glue_catalog_database" "stream" {
  name = "ecd-mod1-desafio-censo-matriculas-db"
}

resource "aws_glue_crawler" "stream" {
  database_name = aws_glue_catalog_database.stream.name
  name          = "ecd-mod1-desafio-censo-matriculas-crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.bucket}/staging/"
  }

  configuration = <<EOF
{
   "Version": 1.0,
   "Grouping": {
      "TableGroupingPolicy": "CombineCompatibleSchemas" }
}
EOF

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }
}
