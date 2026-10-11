variable "team_lookup" {
  description = <<EOT
Map of team_lookup, attributes below
Required:
    - name
    - project_id
Optional:
    - top
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name       = string
    project_id = string
    top        = optional(number)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.team_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.team_lookup : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.team_lookup : (
        alltrue([for x in v.administrators : length(trimspace(x)) > 0])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.team_lookup : (
        alltrue([for x in v.members : length(trimspace(x)) > 0])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.team_lookup : (
        v.top == null || (v.top >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
}

