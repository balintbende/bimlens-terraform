resource "azurerm_container_registry" "acr" {
  name                = "${var.product}"
  resource_group_name = var.azure_resource_group_name
  location            = var.azure_region
  sku                 = "Basic"

  tags = {
    environment = var.environment
  }
}