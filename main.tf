data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}



resource "aws_instance" "web" {
  ami              = "ami-0866a3c8686eaeeba"
  instance_type    = var.instance_type
  user_data_base64 = base64encode(file("init.sh"))
  tags = {
    Name = var.tag_name
  }
}
