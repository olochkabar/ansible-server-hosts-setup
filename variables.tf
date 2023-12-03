variable "sshkey" {
    type = string
    default = "terraformkey"
}

variable "ec2type" {
    type = map(string)
    default = {
        host1 = "t2.micro"
        host2 = "t2.micro"
    }
  
}