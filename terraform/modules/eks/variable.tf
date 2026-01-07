variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "VPC ID for EKS"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "instance_types" {
  description = "Worker node instance types"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 3
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "tags" {
  description = "Tags for EKS resources"
  type        = map(string)
  default     = {}
}
