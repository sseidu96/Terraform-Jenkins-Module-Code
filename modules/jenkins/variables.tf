variable "instance_name" {
  type    = string
  default = "Jenkins-Server"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "blueprint_id" {
  type    = string
  default = "ubuntu_24_04"
}

variable "bundle_id" {
  type    = string
  default = "nano_3_0"
}