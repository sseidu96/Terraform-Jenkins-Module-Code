resource "aws_lightsail_instance" "jenkins" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = "yum-key"
  tags = {
    env = "Dev"
    Team = "DevOps"
  }
  user_data = file("${path.module}/jenkins-install.sh")
}

resource "aws_lightsail_instance_public_ports" "jenkins" {
  instance_name = aws_lightsail_instance.jenkins.name

  port_info {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
  }

  port_info {
    protocol  = "tcp"
    from_port = 8080
    to_port   = 8080
  }
}
