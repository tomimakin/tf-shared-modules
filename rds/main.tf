# rds postgresql
resource "aws_db_instance" "postgresql_db" {
  auto_minor_version_upgrade = true
  copy_tags_to_snapshot      = true
  maintenance_window         = "Sat:00:00-Sat:03:00"
  max_allocated_storage      = 100
  allocated_storage    = 10
  
  db_name              = var.db_name
  deletion_protection  = true
  identifier           = var.db_identifier
  instance_class       = "db.t3.micro"
  license_model        = "postgresql-license"
  engine               = "postgres"
  engine_version       = "16.6"
  availability_zone    = "us-east-1"
  username             = "pgdbadmin"
  password             = var.db_password
  skip_final_snapshot  = true
  port                 = 5432
  db_subnet_group_name = var.db_subnet_group_name
  storage_type         = "gp2"
  multi_az             = false
}