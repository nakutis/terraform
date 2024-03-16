#!/bin/bash
set -e

# Update system
sudo yum update -y

# Install OpenJDK 11
sudo amazon-linux-extras install java-openjdk11 -y

# Install wget
sudo yum install -y wget

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins
sudo yum install -y jenkins --nogpgcheck

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins
