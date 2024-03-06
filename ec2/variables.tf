variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
  default = 2
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default = "t2.small"
  }

# variable "ami" {
#   description = "AMI ID for the instances"
#   type        = string
# }

variable "role" {
  description = "Role of the instance (master/worker)"
  type        = string
}
