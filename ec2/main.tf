data "aws_ami" "kubernetes" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Это ID владельца Amazon Linux 2 AMI
}

resource "aws_instance" "k8s" {
  count         = var.instance_count
  ami           = data.aws_ami.kubernetes.id
  instance_type = var.instance_type
  tags = {
    Name = "K8s-${var.role}-${count.index}"
  }

  
}
