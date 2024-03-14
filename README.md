# Description

This is a dummy module which does not create any actual cloud resources. It's intended for registering hosts which cannot be managed with Terraform to our infra.

For example providers like Hetzner or MacStadium have no provider module for Terrafom.

This module creates the Ansible inventory hosts in order to make hosts appear the same way all the other hosts created by Terraform do.

# Variables

* __Static__
  * `ips` - List of public IPs for dummy hosts. (default: `[]`)
* __General__
  * `region` - Region in which the host will be created.
  * `prefix` - Short name of provider being used.
  * `name` - Prefix of hostname before index. (default: `node`)
  * `group` - Name of Ansible group to add hosts to.
  * `env` - Environment for these hosts, affects DNS entries.
  * `stage` - Name of stage, like `prod`, `dev`, or `staging`.
* __DNS__
  * `cf_zone_id` - CloudFlare DNS domain zone ID. (ID for `status.im`)
  * `domain` - DNS Domain for hostnames. (default: `status.im`)

# Usage

```hcl
module "hosts" {
  source = "./modules/dummy-module"

  name   = "node"
  env    = "example"
  stage  = "prod"
  group  = "example-prod"
  region = "eu-hel1"
  prefix = "he"

  ips = [
    "12.34.56.78",
    "23.45.67.89",
    "98.76.54.32",
  ]
}
```
