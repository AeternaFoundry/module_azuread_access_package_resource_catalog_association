resource "azuread_access_package_resource_catalog_association" "access_package_resource_catalog_associations" {
  for_each = var.access_package_resource_catalog_associations

  catalog_id             = each.value.catalog_id
  resource_origin_id     = each.value.resource_origin_id
  resource_origin_system = each.value.resource_origin_system

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

