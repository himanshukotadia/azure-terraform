# Configure Azure Provider
terraform {
required_providers {
   azurerm = {
    source = "hashicorp/azurerm"
    version = "5.11.0"
   }
 } 
 backend "azurerm" {
  resource_group_name  = "tf-state-rg"
  storage_account_name = "tfstatesa"
  container_name       = "tfstate"
  key                  = "terraform.tfstate"
 }
}

# Configure the azure provider features
provider "azurerm" {
    subscription_id = ""
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false #I think it isn't safe for real time scenarios.
    }
  }
}

module "compute" {
  source = "./modules/compute"

  project_name = "dssd"
  team_name = var.team_name
  environment = var.environment
  location = var.location
  address_space = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
  vm_count = var.vm_count
  vm_size = var.vm_size
  tags = var.tags
}

module "database" {
  source = "./modules/database"

  project_name = "fwwawe"
  environment = var.environment
  location = var.location
  admin_password = var.database_password
  database_sku = var.database_sku
  tags = var.tags
}

module "web_app" {
  source = "./modules/web-app"

  project_name = "fdsdgt"
  environment = var.environment
  location = var.location
  app_service_sku = var.app_service_sku
  database_connection_string = module.database.connection_string
  tags = var.tags
}