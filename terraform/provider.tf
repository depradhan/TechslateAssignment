terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}


# You can use environment variables or service principals for authentication.
# Here, I'm using environment variables for simplicity.

# Environment variables for authentication:
# export ARM_CLIENT_ID="your-client-id"
# export ARM_CLIENT_SECRET="your-client-secret"
# export ARM_SUBSCRIPTION_ID="your-subscription-id"
# export ARM_TENANT_ID="your-tenant-id"

# Alternatively, you can use a service principal and specify its values here.