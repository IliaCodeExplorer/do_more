output "instance_ids" {
  value = aws_instance.k8s[*].id
}

output "instance_ips" {
  value = aws_instance.k8s[*].public_ip
}
