variable "vpc_name" {
  type        = string
  description = "vpc name"
  default     = "cmtr-otuokx4e-01-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "vpc cidr"
  default     = "10.10.0.0/16"
}

variable "availability_zone1" {
  type        = string
  description = "availability zone"
  default     = "eu-west-1a"
}

variable "availability_zone2" {
  type        = string
  description = "availability zone"
  default     = "eu-west-1b"
}

variable "availability_zone3" {
  type        = string
  description = "availability zone"
  default     = "eu-west-1c"
}

variable "subnet1_cidr" {
  type        = string
  description = "subnet1 cidr"
  default     = "10.10.1.0/24"
}

variable "subnet2_cidr" {
  type        = string
  description = "subnet2 cidr"
  default     = "10.10.3.0/24"
}

variable "subnet3_cidr" {
  type        = string
  description = "subnet3 cidr"
  default     = "10.10.5.0/24"
}