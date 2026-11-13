output "resource_group_name" {
  description = "rg name"
  value = azurerm_resource_group.webapp.name
}

output "web_app_name" {
  description = "name of the webapp"
  value = azurerm_linux_web_app.main.name
}

output "web_app_url" {
  description = "url of the webapp"
  value = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "app_service_plan" {
  description = "name of the app service plan"
  value = azurerm_service_plan.main.name
}