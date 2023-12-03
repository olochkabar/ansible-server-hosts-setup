resource "aws_instance" "control" {
  ami = data.aws_ami.ami.id
  instance_type = "t2.micro"
  user_data = data.template_cloudinit_config.userdata.rendered
  #vpc_security_group_ids = [ aws_security_group.olochsg.id ]
  key_name = var.sshkey
  security_groups = ["launch-wizard-1"]
  #count = 2
  tags = {
    Name = "controller"
  }
}


resource "aws_instance" "hosts" {
  ami = data.aws_ami.olochansible.id
  for_each = var.ec2type
  instance_type = each.value
  user_data = file("${path.module}/userdatahosts.sh")
  #vpc_security_group_ids = [ aws_security_group.olochsg.id ]
  key_name = var.sshkey
  security_groups = ["launch-wizard-1"]
  #count = 2
  tags = {
    Name = "olochi-${each.key}"
  }
}