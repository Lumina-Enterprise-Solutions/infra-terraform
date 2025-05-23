# infra-terraform/environments/dev/main.tf
module "vpc" {
  source               = "../../modules/vpc"
  vpc_cidr             = var.vpc_cidr
  environment          = var.environment
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "rds" {
  source              = "../../modules/rds"
  environment         = var.environment
  database_subnet_ids = module.vpc.database_subnet_ids
}

module "s3" {
  source      = "../../modules/s3"
  environment = var.environment
}
