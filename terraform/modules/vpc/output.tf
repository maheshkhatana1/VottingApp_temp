output "vpc_id" {
  value = var.vpc_id.id
}
output "private_subnets" {
    value = module.vpc.private_subnets
  
}
output "public_subnets" {
  value = module.vpc.public_subnets
}
