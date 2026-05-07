provider "aws" {
  region = "us-east-1"
}

# Get latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.medium"

  key_name = aws_key_pair.redminekey.key_name

  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = file("user_data.sh")

  tags = {
    Name = "hybrid-redmine"
  }
}
