# --- azurerm_virtual_machine_restore_point_collection ---
output "virtual_machine_restore_point_collections" {
  description = "All virtual_machine_restore_point_collection resources"
  value       = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections
}
output "virtual_machine_restore_point_collections_location" {
  description = "List of location values across all virtual_machine_restore_point_collections"
  value       = [for k, v in module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections : v.location]
}
output "virtual_machine_restore_point_collections_name" {
  description = "List of name values across all virtual_machine_restore_point_collections"
  value       = [for k, v in module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections : v.name]
}
output "virtual_machine_restore_point_collections_resource_group_name" {
  description = "List of resource_group_name values across all virtual_machine_restore_point_collections"
  value       = [for k, v in module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections : v.resource_group_name]
}
output "virtual_machine_restore_point_collections_source_virtual_machine_id" {
  description = "List of source_virtual_machine_id values across all virtual_machine_restore_point_collections"
  value       = [for k, v in module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections : v.source_virtual_machine_id]
}
output "virtual_machine_restore_point_collections_tags" {
  description = "List of tags values across all virtual_machine_restore_point_collections"
  value       = [for k, v in module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections : v.tags]
}


# --- azurerm_virtual_machine_restore_point ---
output "virtual_machine_restore_points" {
  description = "All virtual_machine_restore_point resources"
  value       = module.virtual_machine_restore_points.virtual_machine_restore_points
}
output "virtual_machine_restore_points_crash_consistency_mode_enabled" {
  description = "List of crash_consistency_mode_enabled values across all virtual_machine_restore_points"
  value       = [for k, v in module.virtual_machine_restore_points.virtual_machine_restore_points : v.crash_consistency_mode_enabled]
}
output "virtual_machine_restore_points_excluded_disks" {
  description = "List of excluded_disks values across all virtual_machine_restore_points"
  value       = [for k, v in module.virtual_machine_restore_points.virtual_machine_restore_points : v.excluded_disks]
}
output "virtual_machine_restore_points_name" {
  description = "List of name values across all virtual_machine_restore_points"
  value       = [for k, v in module.virtual_machine_restore_points.virtual_machine_restore_points : v.name]
}
output "virtual_machine_restore_points_virtual_machine_restore_point_collection_id" {
  description = "List of virtual_machine_restore_point_collection_id values across all virtual_machine_restore_points"
  value       = [for k, v in module.virtual_machine_restore_points.virtual_machine_restore_points : v.virtual_machine_restore_point_collection_id]
}



