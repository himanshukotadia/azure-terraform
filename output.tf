# Root output.tf to expose useful outputs from the modules

output "resource_group_name" {
  description = "name of the rg"
  value = module.compute.resource_group_name
}

output "virtual_network_id" {
  description = "value of VNet ID"
  value = module.compute.virtual_network_id
}