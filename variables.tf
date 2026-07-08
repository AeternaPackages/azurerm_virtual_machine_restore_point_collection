variable "virtual_machine_restore_point_collections" {
  description = <<EOT
Map of virtual_machine_restore_point_collections, attributes below
Required:
    - location
    - name
    - resource_group_name
    - source_virtual_machine_id
Optional:
    - tags
Nested virtual_machine_restore_points (azurerm_virtual_machine_restore_point):
    Required:
        - name
    Optional:
        - crash_consistency_mode_enabled
        - excluded_disks
EOT

  type = map(object({
    location                  = string
    name                      = string
    resource_group_name       = string
    source_virtual_machine_id = string
    tags                      = optional(map(string))
    virtual_machine_restore_points = optional(map(object({
      name                           = string
      crash_consistency_mode_enabled = optional(bool) # Default: false
      excluded_disks                 = optional(set(string))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.virtual_machine_restore_point_collections) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.virtual_machine_restore_point_collections : [for kk in keys(coalesce(v0.virtual_machine_restore_points, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
