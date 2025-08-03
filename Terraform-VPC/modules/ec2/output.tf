output "amazon_linux_2023_ami_id" {
  description = "The ID of the latest Amazon Linux 2023 AMI for x86_64"
  value       = data.aws_ami.amazon_linux_2023_x86.id
}

output "instansces" {
    value = aws_instance.web.*.id
  
}