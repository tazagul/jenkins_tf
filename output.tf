output "web_server_ip" {
  value = aws_instance.instance.public_ip
}