terraform {
  required_version = "> 1.4.0"
  required_providers {
    ansible = {
      source  = "nbering/ansible"
      version = " = 1.0.4"
    }
    cloudflare = {
      source   = "cloudflare/cloudflare"
      version  = " = 3.26.0"
    }
  }
}
