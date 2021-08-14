variable "aws_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "IGTIexecutaEMRaovivo"
}

variable "key_pair_name" {
  default = "ney-igti-teste"
}

variable "airflow_subnet_id" {
  default = "subnet-4cef5427"
}

variable "vpc_id" {
  default = "vpc-d724b4bc"
}

variable "datalake_s3_bucket"{
  default = "datalake-mod1-desafio-ales-597495568095"
}

variable "terraform_state_s3_bucket" {
  default = "terraform-state-ales-597495568095"
}