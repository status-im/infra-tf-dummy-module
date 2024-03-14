/* DNS ------------------------------------------*/

variable "cf_zone_id" {
  description = "ID of CloudFlare zone for host record."
  type        = string
  default     = "fd48f427e99bbe1b52105351260690d1"
}

variable "domain" {
  description = "DNS Domain to update"
  type        = string
  default     = "status.im"
}

/* SCALING --------------------------------------*/

variable "region" {
  description = "Region in which the host reside."
  type        = string
}

variable "prefix" {
  description = "Short name of provider being used."
  type        = string
  default     = "ms"
}

/* STATIC ---------------------------------------*/

variable "ips" {
  description = "Static list of IPs used by the hosts."
  type        = list(string)
}

/* GENERAL --------------------------------------*/

variable "name" {
  description = "Prefix of hostname before index."
  type        = string
  default     = "node"
}

variable "group" {
  description = "Name of Ansible group to add hosts to."
  type        = string
}

variable "env" {
  description = "Environment for these hosts, affects DNS entries."
  type        = string
}

variable "stage" {
  description = "Name of stage, like prod, dev, or staging."
  type        = string
  default     = ""
}

variable "shell_type" {
  description = "Type of shell used by Ansible."
  type        = string
  default     = null
}

variable "become_user" {
  description = "What user Ansible should become."
  type        = string
  default     = null
}
variable "become_method" {
  description = "Method used by Ansible to become a user."
  type        = string
  default     = null
}
