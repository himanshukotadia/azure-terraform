output "resource_group_name" {
  description = "rg name"
  value = azurerm_resource_group.database.name
}

output "server_name" {
  description = "name of the SQL server"
  value = azurerm_mssql_server.main.name
}

output "database_name" {
  description = "Name of the SQL datavase"
  value = azurerm_mssql_database.main.name
}

output "connection_string" {
  description = "database connection string"
  value = "Server=${azurerm_mssql_server.main.fully_qualified_domain_name};Database=${azurerm_mssql_database.main.name};User Id=${var.admin_username};Password=${var.admin_password};"
  sensitive = true
}