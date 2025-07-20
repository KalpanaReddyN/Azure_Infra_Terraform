terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.37.0"
      }
    }
    
}

provider "azurerm" {
  #configuration options
  features {}

  subscription_id = "7462b2b8-b655-488e-a6b0-2febf3ecc3c1"
  resource_provider_registrations = "none"
  
}