resource "azurerm_resource_group" "My_Resource" {
  for_each = var.Azur_RG
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_storage_account" "My_Storage" {
  for_each                 = var.Azur_Storage
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = azurerm_resource_group.My_Resource[each.value.resource_group_name].name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
resource "azurerm_virtual_network" "_My_vNet" {
  for_each            = var.Azur_Vnet
  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.address_space
  resource_group_name = azurerm_resource_group.My_Resource[each.value.resource_group_name].name
}
resource "azurerm_subnet" "My_Subnet" {
  for_each             = var.Azur_Subnet
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.My_Resource[each.value.resource_group_name].name
  address_prefixes     = each.value.address_prefixes
  virtual_network_name = azurerm_virtual_network._My_vNet[each.value.virtual_network_name].name
}

