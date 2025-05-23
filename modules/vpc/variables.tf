variable "vpc_cidr" { type = string }
variable "environment" { type = string }
variable "public_subnet_cidrs" { type = list(string) }
variable "private_subnet_cidrs" { type = list(string) }
variable "database_subnet_cidrs" { type = list(string) }
variable "availability_zones" { type = list(string) }
