# --- azurerm_virtual_machine_restore_point_collection ---
output "virtual_machine_restore_point_collections_id" {
  description = "Map of id values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_id
}

output "virtual_machine_restore_point_collections_location" {
  description = "Map of location values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_location
}

output "virtual_machine_restore_point_collections_name" {
  description = "Map of name values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_name
}

output "virtual_machine_restore_point_collections_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_resource_group_name
}

output "virtual_machine_restore_point_collections_source_virtual_machine_id" {
  description = "Map of source_virtual_machine_id values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_source_virtual_machine_id
}

output "virtual_machine_restore_point_collections_tags" {
  description = "Map of tags values across all virtual_machine_restore_point_collections, keyed the same as var.virtual_machine_restore_point_collections"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections_tags
}

# --- azurerm_virtual_machine_restore_point ---
output "virtual_machine_restore_points_id" {
  description = "Map of id values across all virtual_machine_restore_points, keyed the same as var.virtual_machine_restore_points"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points_id
}

output "virtual_machine_restore_points_crash_consistency_mode_enabled" {
  description = "Map of crash_consistency_mode_enabled values across all virtual_machine_restore_points, keyed the same as var.virtual_machine_restore_points"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points_crash_consistency_mode_enabled
}

output "virtual_machine_restore_points_excluded_disks" {
  description = "Map of excluded_disks values across all virtual_machine_restore_points, keyed the same as var.virtual_machine_restore_points"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points_excluded_disks
}

output "virtual_machine_restore_points_name" {
  description = "Map of name values across all virtual_machine_restore_points, keyed the same as var.virtual_machine_restore_points"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points_name
}

output "virtual_machine_restore_points_virtual_machine_restore_point_collection_id" {
  description = "Map of virtual_machine_restore_point_collection_id values across all virtual_machine_restore_points, keyed the same as var.virtual_machine_restore_points"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points_virtual_machine_restore_point_collection_id
}


