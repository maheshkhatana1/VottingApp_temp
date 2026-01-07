variable "name" {
    description ="vpc name"
    type = string
  
}
variable "cidr" {
    description = "vpc cidr block"
    type = string
  
}

variable "azs" {
    description = "availabilty zones"
    type = list(string)
  
}

variable "private_subnets" {
 description = "private subnet"
  type = list(string)
}

variable "public_subnets" {
  description = "public subnet"
  type = list(string)
}

