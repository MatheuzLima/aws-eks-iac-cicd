terraform {
  required_version = ">= v1.14"

  # Definição dos providers necessários para o projeto
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.41.0"
    }
  }
  # S3 para armazenar o estado do Terraform
  backend "s3" {

  }
}

# Configuração do provider AWS
provider "aws" {
  region = var.aws_region
}