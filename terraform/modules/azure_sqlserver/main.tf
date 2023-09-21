resource "azurerm_mysql_flexible_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.sql_admin_login
  administrator_password       = var.sql_admin_password
  sku_name                     = "GP_Standard_D2ds_v4"
  version                      = "8.0.21"
  zone                         = "1"
}

resource "azurerm_mysql_flexible_server_firewall_rule" "example" {
  name                = "example-firewall"
  server_name         = azurerm_mysql_flexible_server.example.name
  start_ip_address    = var.firewall_start_ip
  end_ip_address      = var.firewall_end_ip
  resource_group_name = var.resource_group_name
}
