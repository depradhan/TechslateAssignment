variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "webappName" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "environment" {
  description = "Environment name for eg Dev, QA or Prod"
  type        = string
}

variable "sql_admin_login" {
  description = "The SQL Server administrator login name."
}

variable "sql_admin_password" {
  description = "The SQL Server administrator login password."
}
variable "sql_server_name" {
  description = "The name of the Azure SQL logical server."
}
