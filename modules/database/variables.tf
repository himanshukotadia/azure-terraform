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

variable "admin_username" {
  description = "DB admin username"
  type = string
  default = "sqladmin"
}

variable "admin_password" {
  description = "DB admin password"
  type = string
  sensitive = true
}

variable "database_sku" {
  description = "DB sku/tier"
  type = string
  default = "Basic"
}

variable "tags" {
  description = "Tags to be applied to recrs"
  type = map(string)
  default = {}
}