# data "aws_vpc" "default" {
#   filter {
#     name   = "tag:Name"
#     values = [var.vpc_name]
#   }
# } create vpc manually

# data "aws_security_groups" "ec2_security_group" {
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.default.id]
#   }
#   filter {
#     name   = "group-name"
#     values = var.security_group_names
#   }
# }