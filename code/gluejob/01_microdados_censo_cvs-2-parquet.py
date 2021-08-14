# 01_microdados_censo_csv_2_parquet
# ALES
# Converte os arquivos CSV em parquet
# usando o cluster Spark

from pyspark.sql.functions import mean, max, min, col, count
from pyspark.sql import SparkSession

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
