module "vpc" {
  source = "../../modules/vpc"

  name            = "voting-vpc"
  cidr            = "10.0.0.0/16"
  azs             = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
}


module "eks" {
  source = "../../modules/eks"

  cluster_name        = "voting-cluster"
  cluster_version     = "1.29"

  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnets

  instance_types = ["t3.medium"]
  min_size       = 1
  max_size       = 3
  desired_size  = 2

  tags = {
    Environment = "dev"
    Project     = "voting-app"
  }
}

module "iam" {
  source = "../../modules/iam"

  github_repo = "maheshkhatana1/voting-app"
}


module "ecr" {
  source = "../../modules/ecr"

  repositories = [
    "voting-backend",
    "voting-frontend"
  ]

  max_images = 15

  tags = {
    Environment = "dev"
    Project     = "voting-app"
  }
}

