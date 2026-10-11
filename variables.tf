variable "ssm_maintenance_windows_lookup" {
  description = <<EOT
Map of ssm_maintenance_windows_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = list(string)
    })))
  }))
}

