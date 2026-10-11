output "security_monitoring_rules_lookup_id" {
  description = "Map of id values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_monitoring_rules_lookup_default_only_filter" {
  description = "Map of default_only_filter values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no default_only_filter are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.default_only_filter if v.default_only_filter != null }
}
output "security_monitoring_rules_lookup_name_filter" {
  description = "Map of name_filter values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no name_filter are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.name_filter if v.name_filter != null && length(v.name_filter) > 0 }
}
output "security_monitoring_rules_lookup_rule_ids" {
  description = "Map of rule_ids values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no rule_ids are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.rule_ids if v.rule_ids != null && length(v.rule_ids) > 0 }
}
output "security_monitoring_rules_lookup_rules" {
  description = "Map of rules values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no rules are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "security_monitoring_rules_lookup_tags_filter" {
  description = "Map of tags_filter values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no tags_filter are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.tags_filter if v.tags_filter != null && length(v.tags_filter) > 0 }
}
output "security_monitoring_rules_lookup_user_only_filter" {
  description = "Map of user_only_filter values across all security_monitoring_rules_lookup, keyed the same as var.security_monitoring_rules_lookup except keys with no user_only_filter are omitted"
  value       = { for k, v in data.datadog_security_monitoring_rules.security_monitoring_rules_lookup : k => v.user_only_filter if v.user_only_filter != null }
}

