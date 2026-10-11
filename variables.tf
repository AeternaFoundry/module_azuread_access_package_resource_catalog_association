variable "access_package_resource_catalog_associations" {
  description = <<EOT
Map of access_package_resource_catalog_associations, attributes below
Required:
    - catalog_id
    - resource_origin_id
    - resource_origin_system
EOT

  type = map(object({
    catalog_id             = string
    resource_origin_id     = string
    resource_origin_system = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_catalog_associations : (
        length(v.resource_origin_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_catalog_associations : (
        length(v.resource_origin_system) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_catalog_associations : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.catalog_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

