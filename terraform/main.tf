module "azure_webapp" {
  source                = "./modules/azure_webapp"
  webappName            = var.webappName
  resource_group_name   = var.resource_group_name
  location              = var.location
  environment           = var.environment
  sql_admin_login       = var.sql_admin_login
  sql_admin_password    = var.sql_admin_password
  sql_server_name       = var.sql_server_name


}

module "sql_server" {
  source                = "./modules/azure_sqlserver"
  resource_group_name   = var.resource_group_name
  location              = var.location
  sql_server_name       = var.sql_server_name
  sql_admin_login       = var.sql_admin_login
  sql_admin_password    = var.sql_admin_password
  firewall_start_ip     = var.firewall_start_ip
  firewall_end_ip       = var.firewall_end_ip
  environment           = var.environment

depends_on = [ 
  module.azure_webapp
 ]

}