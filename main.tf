resource "azurerm_resource_group" "proj1rg" {
    name     = "proj1rg"
    location = "East US"
  }

resource "azurerm_virtual_network" "proj1VNET" {
  name = "proj1VNET"
  resource_group_name = azurerm_resource_group.proj1rg.name
  location = azurerm_resource_group.proj1rg.location
  address_space =  ["10.10.0.0/16"]
  }

resource "azurerm_subnet" "subnet-1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.proj1rg.name
  virtual_network_name = azurerm_virtual_network.proj1VNET.name
  address_prefixes     = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "subnet-2"
  resource_group_name  = azurerm_resource_group.proj1rg.name
  virtual_network_name = azurerm_virtual_network.proj1VNET.name
  address_prefixes     = ["10.10.2.0/24"]
}