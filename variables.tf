variable "instance_type" {
  description = "value"
  type        = string
  default = "t2.micro"
}
variable "tag_name" {
  description = "value"
  type        = string
  default = "my-instance"
}
variable "instance_count" {
  description = "value"
  type        = number
  default = 1
}
variable "init_script" {
  description = "value"
  type        = string
  default = "init-dev.sh"
}
