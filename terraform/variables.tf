variable "master_ip" {
  type = string
}

variable "ssh_user" {
  type = string
}

variable "ssh_password" {
  type      = string
  sensitive = true
}

variable "config" {
  type    = string
  default = null
}
