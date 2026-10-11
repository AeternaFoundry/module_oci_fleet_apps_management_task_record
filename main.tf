resource "oci_fleet_apps_management_task_record" "fleet_apps_management_task_records" {
  for_each = var.fleet_apps_management_task_records

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  details {
    execution_details {
      catalog_id  = each.value.details.execution_details.catalog_id
      command     = each.value.details.execution_details.command
      config_file = each.value.details.execution_details.config_file
      dynamic "content" {
        for_each = each.value.details.execution_details.content != null ? [each.value.details.execution_details.content] : []
        content {
          bucket      = content.value.bucket
          catalog_id  = content.value.catalog_id
          checksum    = content.value.checksum
          namespace   = content.value.namespace
          object      = content.value.object
          source_type = content.value.source_type
        }
      }
      dynamic "credentials" {
        for_each = each.value.details.execution_details.credentials != null ? each.value.details.execution_details.credentials : []
        content {
          display_name = credentials.value.display_name
          id           = credentials.value.id
        }
      }
      endpoint                        = each.value.details.execution_details.endpoint
      execution_type                  = each.value.details.execution_details.execution_type
      is_executable_content           = each.value.details.execution_details.is_executable_content
      is_locked                       = each.value.details.execution_details.is_locked
      is_read_output_variable_enabled = each.value.details.execution_details.is_read_output_variable_enabled
      system_variables                = each.value.details.execution_details.system_variables
      target_compartment_id           = each.value.details.execution_details.target_compartment_id
      dynamic "variables" {
        for_each = each.value.details.execution_details.variables != null ? [each.value.details.execution_details.variables] : []
        content {
          dynamic "input_variables" {
            for_each = variables.value.input_variables != null ? variables.value.input_variables : []
            content {
              description = input_variables.value.description
              name        = input_variables.value.name
              type        = input_variables.value.type
            }
          }
          output_variables = variables.value.output_variables
        }
      }
    }
    is_apply_subject_task    = each.value.details.is_apply_subject_task
    is_discovery_output_task = each.value.details.is_discovery_output_task
    operation                = each.value.details.operation
    os_type                  = each.value.details.os_type
    platform                 = each.value.details.platform
    dynamic "properties" {
      for_each = each.value.details.properties != null ? [each.value.details.properties] : []
      content {
        num_retries        = properties.value.num_retries
        timeout_in_seconds = properties.value.timeout_in_seconds
      }
    }
    scope = each.value.details.scope
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

