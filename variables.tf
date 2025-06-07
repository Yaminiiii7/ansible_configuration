variable "subnet_id" {
  description = "The ID of the existing subnet"
  type        = string
}

variable "security_group_id" {
  description = "List of security group IDs"
  type        = list(string)
}
