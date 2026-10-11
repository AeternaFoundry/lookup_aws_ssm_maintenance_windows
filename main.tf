data "aws_ssm_maintenance_windows" "ssm_maintenance_windows_lookup" {
  for_each = var.ssm_maintenance_windows_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

