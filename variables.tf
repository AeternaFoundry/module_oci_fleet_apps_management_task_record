variable "fleet_apps_management_task_records" {
  description = <<EOT
Map of fleet_apps_management_task_records, attributes below
Required:
    - compartment_id
    - display_name
    - details (block):
        - execution_details (required, block):
            - catalog_id (optional)
            - command (optional)
            - config_file (optional)
            - content (optional, block):
                - bucket (optional)
                - catalog_id (optional)
                - checksum (optional)
                - namespace (optional)
                - object (optional)
                - source_type (required)
            - credentials (optional, block):
                - display_name (optional)
                - id (optional)
            - endpoint (optional)
            - execution_type (required)
            - is_executable_content (optional)
            - is_locked (optional)
            - is_read_output_variable_enabled (optional)
            - system_variables (optional)
            - target_compartment_id (optional)
            - variables (optional, block):
                - input_variables (optional, block):
                    - description (optional)
                    - name (optional)
                    - type (optional)
                - output_variables (optional)
        - is_apply_subject_task (optional)
        - is_discovery_output_task (optional)
        - operation (optional)
        - os_type (optional)
        - platform (optional)
        - properties (optional, block):
            - num_retries (required)
            - timeout_in_seconds (required)
        - scope (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    details = object({
      execution_details = object({
        catalog_id  = optional(string)
        command     = optional(string)
        config_file = optional(string)
        content = optional(object({
          bucket      = optional(string)
          catalog_id  = optional(string)
          checksum    = optional(string)
          namespace   = optional(string)
          object      = optional(string)
          source_type = string
        }))
        credentials = optional(list(object({
          display_name = optional(string)
          id           = optional(string)
        })))
        endpoint                        = optional(string)
        execution_type                  = string
        is_executable_content           = optional(bool)
        is_locked                       = optional(bool)
        is_read_output_variable_enabled = optional(bool)
        system_variables                = optional(list(string))
        target_compartment_id           = optional(string)
        variables = optional(object({
          input_variables = optional(list(object({
            description = optional(string)
            name        = optional(string)
            type        = optional(string)
          })))
          output_variables = optional(list(string))
        }))
      })
      is_apply_subject_task    = optional(bool)
      is_discovery_output_task = optional(bool)
      operation                = optional(string)
      os_type                  = optional(string)
      platform                 = optional(string)
      properties = optional(object({
        num_retries        = number
        timeout_in_seconds = number
      }))
      scope = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_task_records : (
        contains([for v in ["API", "SCRIPT", "TERRAFORM"] : lower(v)], lower(v.details.execution_details.execution_type))
      )
    ])
    error_message = "must be one of: \"API\", \"SCRIPT\", \"TERRAFORM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_task_records : (
        v.details.execution_details.content == null || (contains([for v in ["CATALOG", "OBJECT_STORAGE_BUCKET"] : lower(v)], lower(v.details.execution_details.content.source_type)))
      )
    ])
    error_message = "must be one of: \"CATALOG\", \"OBJECT_STORAGE_BUCKET\""
  }
}

