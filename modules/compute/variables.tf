variable "project_name" {
    description = "The Name of the Project"
    type = string
}

variable "team_name" {
  description = "name of team for the proj"
  type = string
}

variable "environment" {
  description = "type of rnv like dev, prod"
  type = string

  validation {
    condition = contains(["dev", "staging", "prod", lower(var.environment)])
    error_message = "The environment must be one of : dev, staging, prod"
  }
}

variable "location" {
  description = "azure region to create resources"
  type = string
  default = "West US 2"
}

variable "vm_count" {
  description = "Number of VM to provision"
  type = number
  default = 1

  validation {
    condition = var.vm_count >= 1 && var.vm_count <= 5
    error_message = "The vm_count should be a positive int between 1-5"
  }
}

variable "vm_size"{
    description = "size of the vm instance SKU"
    type = string
    default = "Standard_B1s"
}

variable "address_space" {
  description = "address space of the VM"
  type = list(string)
}

variable "subnet_address_prefix" {
  description = "subnet address prefix for the subnet"
  type = string
}

variable "tags" {
  description = "tags to be applied to resources"
  type = map(string)
}