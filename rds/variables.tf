variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "db_identifier" {
  type        = string
  description = "The name of the RDS instance"
}

variable "db_subnet_group_name" {
  type        = string
  description = "Name of the DB subnet group. DB instance will be created in the VPC associated with the DB subnet group."
}

variable "db_password" {
  type        = string
  description = "The db password"
}