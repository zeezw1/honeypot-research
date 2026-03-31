terraform {
  required_version = "~> 1"

  required_providers {
    k3s = {
      source  = "striveworks/k3s"
      version = ">= 0.3.0"
    }
  }
}

provider "k3s" {
  k3s_version = "v1.34.4+k3s1"
}

resource "k3s_server" "main" {
  auth = {
    host     = var.master_ip
    user     = var.ssh_user
    password = var.ssh_password
  }
  config = var.config
}
