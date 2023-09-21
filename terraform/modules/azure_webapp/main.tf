resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.webappName}-${var.environment}-plan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }

}

resource "azurerm_app_service" "example" {
  name                = "${var.webappName}-${var.environment}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    linux_fx_version = "TOMCAT|8.5-jre8"
  }

   connection_string {
    name  = "alm"
    type  = "MySQL"
    value = "jdbc:mysql://${var.sql_server_name}.mysql.database.azure.com:3306/alm?useSSL=true&requireSSL=false&autoReconnect=true&user=${var.sql_admin_login}&password=${var.sql_admin_password}"
  }
}
