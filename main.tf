data "datadog_security_monitoring_rules" "security_monitoring_rules_lookup" {
  for_each = var.security_monitoring_rules_lookup

  default_only_filter = each.value.default_only_filter
  name_filter         = each.value.name_filter
  tags_filter         = each.value.tags_filter
  user_only_filter    = each.value.user_only_filter
}

