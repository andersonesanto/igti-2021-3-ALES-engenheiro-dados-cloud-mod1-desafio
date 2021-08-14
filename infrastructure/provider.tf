provider "aws" {
  region = "us-east-2"
}


# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-ales-597495568095"
    key    = "state/edc/mod1/desafio/terraform.tfstate"
    region = "us-east-2"
  }
}
