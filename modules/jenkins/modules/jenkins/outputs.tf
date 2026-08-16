output "public_ip" {
  value = aws_lightsail_instance.jenkins.public_ip_address
}

output "jenkins_url" {
  value = "http://${aws_lightsail_instance.jenkins.public_ip_address}:8080"
}