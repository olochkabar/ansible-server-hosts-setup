data "aws_ami" "olochansible" {
  # provider = aws.usa
  most_recent = true
  #owners      = ["099720109477"]
  owners      = ["711094832077"]

  filter {
    name   = "name"
    #values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230919"]
    values = ["oloch-ansible-ami-ubuntu"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "ami" {
  # provider = aws.usa
  most_recent = true
  owners      = ["099720109477"]
  #owners      = ["711094832077"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230919"]
    #values = ["oloch-ansible-ami-ubuntu"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}