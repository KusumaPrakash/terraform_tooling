variable "domain" {
type = string
description = "name of the domain"
}

locals {
  application_name = "training"
  letters          = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  nodes = {
    count = 3
    size  = "Standard_D2s_v3"
  }
short_name = substr(local.application_name,0,3)
domain_name = lower(var.domain)
}

output "short_app_name" {
value = local.short_name
}

output "letters_kebab_case" {
value = join("-",local.letters)
}

output "domain_in_lowercase" {
value = local.domain_name
}

output "nodes_count" {
value = local.nodes.count
}

output "nodes_size" {
value = local.nodes.size
}

output "resource_group_name" {
value = format("rg-%s-%s",local.short_name,local.domain_name)
}
