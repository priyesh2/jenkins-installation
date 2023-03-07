#!/bin/bash

# Install dependencies
sudo yum install -y wget java-1.8.0-openjdk-devel

# Add Jenkins repository to the system
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins package
sudo yum install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service to start on boot
sudo systemctl enable jenkins
