resource "random_password" "password" {
    length = 16
}

output "result" {
  value = random_password.password.result
}