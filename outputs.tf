output "host01_private_ip" {
  value = aws_instance.host01.private_ip    # Update "host" inventory file
}

output "host02_private_ip" {
  value = aws_instance.host02.private_ip    # Update "host" inventory file
}

output "host03_private_ip" {
  value = aws_instance.host03.private_ip    # Update "host" inventory file
}
