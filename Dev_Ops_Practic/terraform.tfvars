Azur_RG = {
  RG1 = {
    name     = "RG_01"
    location = "Eastus"
  }
  RG2 = {
    name     = "RG_02"
    location = "Central India"
  }
}
Azur_Storage = {
  Storage1 = {
    name                     = "thisis420243"
    location                 = "East Us"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    resource_group_name      = "RG1"
  }
  Storage2 = {
    name                     = "thisis4201431"
    location                 = "Central India"
    account_replication_type = "LRS"
    account_tier             = "Standard"
    resource_group_name      = "RG2"
  }
}
Azur_Vnet = {
  vNet1 = {
    name                = "test_Vnet"
    location            = "eastus"
    resource_group_name = "RG1"
    address_space       = ["10.0.0.0/24"]
  }
  vNet2 = {
    name                = "test_vNet02"
    location            = "Central India"
    resource_group_name = "RG2"
    address_space       = ["10.1.0.0/24"]

  }
}
Azur_Subnet = {
  Subnet1 = {
    name                 = "testsubnet"
    address_prefixes     = ["10.0.0.0/25"]
    virtual_network_name = "vNet1"
    resource_group_name  = "RG1"
  }
  Subnet2 = {
    name                 = "testsubnet2"
    address_prefixes     = ["10.1.0.0/25"]
    resource_group_name  = "RG2"
    virtual_network_name = "vNet2"
  }
}
