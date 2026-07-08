locals {
  virtual_machine_restore_point_collections = { for k1, v1 in var.virtual_machine_restore_point_collections : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, source_virtual_machine_id = v1.source_virtual_machine_id, tags = v1.tags } }

  virtual_machine_restore_points = merge([
    for k1, v1 in var.virtual_machine_restore_point_collections : {
      for k2, v2 in coalesce(v1.virtual_machine_restore_points, {}) :
      "${k1}/${k2}" => merge(v2, {
        virtual_machine_restore_point_collection_id = module.virtual_machine_restore_point_collections.virtual_machine_restore_point_collections["${k1}"].id
      })
    }
  ]...)
}

module "virtual_machine_restore_point_collections" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_virtual_machine_restore_point_collection.git?ref=v4.80.0"
  virtual_machine_restore_point_collections = local.virtual_machine_restore_point_collections
}

module "virtual_machine_restore_points" {
  source                         = "git::https://github.com/AeternaModules/azurerm_virtual_machine_restore_point.git?ref=v4.80.0"
  virtual_machine_restore_points = local.virtual_machine_restore_points
  depends_on                     = [module.virtual_machine_restore_point_collections]
}

