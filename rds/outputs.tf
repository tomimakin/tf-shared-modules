output "postgres_host_name" {
  value = aws_db_instance.postgresql_db.address
}