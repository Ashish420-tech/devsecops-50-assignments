provider "aws" {
  region = "ap-south-1"
}

# Get default VPC
data "aws_vpc" "default" {
  default = true
}

# Get subnet (auto pick)
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Security Group
resource "aws_security_group" "elk_sg" {
  name        = "elk-sg"
  description = "ELK security group"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5601
    to_port     = 5601
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "elk" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu (ap-south-1)
  instance_type = "t3.medium"
  key_name      = "elk-key"

  subnet_id = data.aws_subnets.default.ids[0]

  vpc_security_group_ids = [aws_security_group.elk_sg.id]

  tags = {
    Name = "ELK-Stack"
  }
}
