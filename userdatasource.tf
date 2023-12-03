data "template_cloudinit_config" "userdata" {
  

  part {
    content_type = "text/x-shellscript"
    content      = file("${path.module}/anscontrol.sh")
  }

  part {
    content_type = "text/x-shellscript"
    content      = file("${path.module}/ansssh.sh")
  }
}
