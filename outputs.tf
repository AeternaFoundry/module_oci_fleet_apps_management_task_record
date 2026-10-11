output "fleet_apps_management_task_records_id" {
  description = "Map of id values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no id are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_apps_management_task_records_compartment_id" {
  description = "Map of compartment_id values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fleet_apps_management_task_records_defined_tags" {
  description = "Map of defined_tags values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no defined_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "fleet_apps_management_task_records_description" {
  description = "Map of description values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no description are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_apps_management_task_records_details" {
  description = "Map of details values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no details are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => one(v.details) if v.details != null && length(v.details) > 0 }
}
output "fleet_apps_management_task_records_display_name" {
  description = "Map of display_name values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no display_name are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "fleet_apps_management_task_records_freeform_tags" {
  description = "Map of freeform_tags values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "fleet_apps_management_task_records_lifecycle_details" {
  description = "Map of lifecycle_details values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fleet_apps_management_task_records_resource_region" {
  description = "Map of resource_region values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no resource_region are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.resource_region if v.resource_region != null && length(v.resource_region) > 0 }
}
output "fleet_apps_management_task_records_state" {
  description = "Map of state values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no state are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fleet_apps_management_task_records_system_tags" {
  description = "Map of system_tags values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no system_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "fleet_apps_management_task_records_time_created" {
  description = "Map of time_created values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no time_created are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fleet_apps_management_task_records_time_updated" {
  description = "Map of time_updated values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no time_updated are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "fleet_apps_management_task_records_type" {
  description = "Map of type values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no type are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.type if v.type != null && length(v.type) > 0 }
}
output "fleet_apps_management_task_records_version" {
  description = "Map of version values across all fleet_apps_management_task_records, keyed the same as var.fleet_apps_management_task_records except keys with no version are omitted"
  value       = { for k, v in oci_fleet_apps_management_task_record.fleet_apps_management_task_records : k => v.version if v.version != null && length(v.version) > 0 }
}

