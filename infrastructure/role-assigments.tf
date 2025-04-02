resource "azurerm_role_assignment" "app_contributor" {
  scope                = azurerm_resource_group.app_rg.id
  role_definition_name = "Contributor"
  principal_id        = azuread_service_principal.app_sp.id
}

resource "azurerm_role_assignment" "shared_contributor" {
  scope                = azurerm_resource_group.shared_rg.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.shared_sp.id
}

resource "azurerm_role_assignment" "k8s_contributor" {
  scope                = azurerm_resource_group.k8s_rg.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.k8s_sp.id
}

resource "azurerm_role_assignment" "k8s_network" {
  scope                = "/subscriptions/3f7b9a8e-2d4e-41b9-bfbc-a9d97fd7e5f9/resourceGroups/network-rg"
  role_definition_name = "Network Contributor"
  principal_id         = azuread_service_principal.k8s_sp.id
}
