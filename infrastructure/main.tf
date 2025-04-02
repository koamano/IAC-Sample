resource "azurerm_resource_group" "app_rg" {
  name     = "app-rg"
  location = "East US"
}

resource "azurerm_resource_group" "shared_rg" {
  name     = "shared-rg"
  location = "East US"
}

resource "azurerm_resource_group" "k8s_rg" {
  name     = "k8s-rg"
  location = "East US"
}

resource "azuread_application" "app_app" {
  display_name = "app-app"
}

resource "azuread_application" "shared_app" {
  display_name = "shared-app"
}

resource "azuread_application" "k8s_app" {
  display_name = "k8s-app"
}

resource "azuread_service_principal" "app_sp" {
  client_id = azuread_application.app_app.client_id
}

resource "azuread_service_principal" "shared_sp" {
  client_id = azuread_application.shared_app.client_id
}

resource "azuread_service_principal" "k8s_sp" {
  client_id = azuread_application.k8s_app.client_id
}