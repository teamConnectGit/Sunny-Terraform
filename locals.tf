locals {
  user_data_base64 = base64encode(file(var.init_script))
  tag_name         = "${var.tag_name}-${terraform.workspace}"
  key_name         = "Terraform-Key"
  ami              = "ami-0866a3c8686eaeeba"
}
