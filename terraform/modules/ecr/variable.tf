variable "repositories" {
  description = "List of ECR repository names"
  type        = list(string)
}

variable "max_images" {
  description = "Number of images to retain"
  type        = number
  default     = 10
}

variable "tags" {
  description = "Tags for ECR repositories"
  type        = map(string)
  default     = {}
}
