variable "project_name" {
    description = "The Name of the Project"
    type = string
}

variable "environment" {
  description = "type of env like dev, prod"
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

variable "app_service_sku" {
  description = "app service plan sku"
  type = string
  default = "f1"
}

variable "database_connection_string" {
  description = "Datavase Connection str"
  type = string
  sensitive = true
  default = ""
}
variable "tags" {
  description = "Tags to be applied to resources"
  type = map(string)
  default = {}
}