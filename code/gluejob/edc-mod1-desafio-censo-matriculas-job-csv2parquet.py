# edc-mod1-desafio-censo-matriculas-job-csv2parquet
# ALES
# Converte os arquivos CSV em parquet
# usando glue jobs

import sys
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

# @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

spark = (
    SparkSession.builder.appName("ALES-mod1-desafio-csv-2-parquet")
    .getOrCreate()
)

matricula = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", "|")
    .load("s3://datalake-mod1-desafio-ALES-597495568095/raw-data/matricula/")
)


(
    matricula
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("co_regiao")
    .save("s3://datalake-mod1-desafio-ALES-597495568095/staging/matricula/")
)
