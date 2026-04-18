# Variáveis para parametrização do projeto

variable "aws_region" {
  description = "região da AWS onde os recursos serão criados"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "nome do VPC da AWS"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "CIDR block do VPC da AWS"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "zonas de disponibilidade para os subnets do VPC da AWS"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "subnets privados para o VPC da AWS"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "subnets públicos para o VPC da AWS"
  type        = set(string) #list(string) ou set(string) dependendo se a ordem importa ou não
  nullable    = false
}

variable "enable_nat_gateway" {
  description = "indica se o NAT Gateway deve ser criado para o VPC da AWS"
  type    = bool
}

variable "enable_vpn_gateway" {
  description = "indica se o VPN Gateway deve ser criado para o VPC da AWS"
  type    = bool
}

variable "aws_eks_cluster_name" {
  description = "nome do cluster EKS da AWS"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "versão do cluster EKS da AWS"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "tipos de instância para os grupos de nós gerenciados pelo EKS"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "tags para o projeto na AWS"
  type        = map(any)
  nullable    = false
}