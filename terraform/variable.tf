variable "region" {
  type    = string
  default = "eu-west"
}
variable "label" {
  type    = string
  default = "django-todo-list"
}
variable "image" {
  type    = string
  default = "linode/ubuntu22.04"
}
variable "public_key" {}

variable "root_pass" {}

variable "instance_type" {
  type    = string
  default = "g6-standard-1"
}
