data "azuredevops_team" "team_lookup" {
  for_each = var.team_lookup

  name       = each.value.name
  project_id = each.value.project_id
  top        = each.value.top

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

