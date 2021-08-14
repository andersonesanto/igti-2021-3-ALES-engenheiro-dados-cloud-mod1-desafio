provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = var.terraform_state_s3_bucket
    key    = "state/edc/mod1/desafio/terraform.tfstate"
    region = var.aws_region
  }
}
