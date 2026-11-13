variable "team_name" {
  description = "The name of the team owning these res"
  type = string
  default = "devops-team"
}

variable "location" {
  description            = "Azure region where the resources will be created"
  type                   = string
  default                = "West US 2"
}

variable "environment" {
  description           = "environment of resources - dev, stg, prod"
  type                  = string
  default               = "dev"
}

variable "resource_group_name" {
  description           = "name of the resource group"
  type                  = string
  default               = "rg-terraform-demo"
}

variable "tags" {
  description           = "tags to apply on resources"
  type = map(string)
}

variable "virtual_network_name" {
  description = "name of the vnet"
  type = string
  default = "vnet-terraform-demo"
}

variable "vnet_address_space" {
  description = "address space for the vnet"
  type = list(string)
  default = ["10.0.0.0/24"]
}

variable "subnet_address_prefix" {
  description = "address prefix for the subnet"
  type = list(string)
  default = ["10.0.0.0/28"]
}

variable "vm_count" {
  description = "The number of VMs to create"
  type = number
  default = 1
}

variable "vm_size" {
  description = "Size pf tje vm"
  type = string
  default = "Standard_B1s"
}

# variable "project_name" {
#   description = "project name"
#   type = string
# }

# Database config

variable "database_password" {
  description = "password for the DB Admin"
  type = string
  sensitive = true
}

variable "database_sku" {
  description = "The sku of the DB"
  type = string
  default = "Basic"
}

# Web App Config

variable "app_service_sku" {
  description = "The SKU for the APP service Plan"
  type = string
  default = "B1"
}