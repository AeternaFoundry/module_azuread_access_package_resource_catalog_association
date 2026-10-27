output "access_package_resource_catalog_associations_id" {
  description = "Map of id values across all access_package_resource_catalog_associations, keyed the same as var.access_package_resource_catalog_associations"
  value       = { for k, v in azuread_access_package_resource_catalog_association.access_package_resource_catalog_associations : k => v.id }
}
output "access_package_resource_catalog_associations_catalog_id" {
  description = "Map of catalog_id values across all access_package_resource_catalog_associations, keyed the same as var.access_package_resource_catalog_associations"
  value       = { for k, v in azuread_access_package_resource_catalog_association.access_package_resource_catalog_associations : k => v.catalog_id }
}
output "access_package_resource_catalog_associations_resource_origin_id" {
  description = "Map of resource_origin_id values across all access_package_resource_catalog_associations, keyed the same as var.access_package_resource_catalog_associations"
  value       = { for k, v in azuread_access_package_resource_catalog_association.access_package_resource_catalog_associations : k => v.resource_origin_id }
}
output "access_package_resource_catalog_associations_resource_origin_system" {
  description = "Map of resource_origin_system values across all access_package_resource_catalog_associations, keyed the same as var.access_package_resource_catalog_associations"
  value       = { for k, v in azuread_access_package_resource_catalog_association.access_package_resource_catalog_associations : k => v.resource_origin_system }
}

