variable "security_monitoring_rules_lookup" {
  description = <<EOT
Map of security_monitoring_rules_lookup, attributes below
Optional:
    - default_only_filter
    - name_filter
    - tags_filter
    - user_only_filter
EOT

  type = map(object({
    default_only_filter = optional(bool)
    name_filter         = optional(string)
    tags_filter         = optional(list(string))
    user_only_filter    = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_monitoring_rules_lookup : (
        v.name_filter == null || (length(v.name_filter) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

