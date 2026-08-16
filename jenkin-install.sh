user_data = <<-EOF
    #!/bin/bash

    apt-get update -y

    apt-get install -y fontconfig openjdk-21-jre wget

    wget -O /etc/apt/keyrings/jenkins-keyring.asc \
      https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

    echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
      https://pkg.jenkins.io/debian-stable binary/" \
      > /etc/apt/sources.list.d/jenkins.list

    apt-get update -y

    apt-get install -y jenkins

    systemctl enable jenkins
    systemctl start jenkins
  EOF
}
