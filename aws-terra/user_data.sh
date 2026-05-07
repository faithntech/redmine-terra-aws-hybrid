#!/bin/bash

# For Amazon Linux 2
exec > /var/log/user-data.log 2>&1
set -xe

echo "===== START USER DATA ====="

# Wait for yum lock to release (important fix)
while ps aux | grep -i yum | grep -v grep; do
  echo "Waiting for yum lock..."
  sleep 5
done

# Update system
yum update -y

# Install Docker using AMAZON LINUX 2 method (IMPORTANT)
amazon-linux-extras enable docker
yum install -y docker

# Start Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -aG docker ec2-user

# Install Docker Compose V2 (safe method)
mkdir -p /usr/local/lib/docker/cli-plugins

curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o /usr/local/lib/docker/cli-plugins/docker-compose

chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# Verify
docker --version || true
docker compose version || true

echo "===== DONE ====="