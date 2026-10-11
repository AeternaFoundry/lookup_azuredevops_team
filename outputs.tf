output "team_lookup_id" {
  description = "Map of id values across all team_lookup, keyed the same as var.team_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_lookup_administrators" {
  description = "Map of administrators values across all team_lookup, keyed the same as var.team_lookup except keys with no administrators are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.administrators if v.administrators != null && length(v.administrators) > 0 }
}
output "team_lookup_description" {
  description = "Map of description values across all team_lookup, keyed the same as var.team_lookup except keys with no description are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "team_lookup_descriptor" {
  description = "Map of descriptor values across all team_lookup, keyed the same as var.team_lookup except keys with no descriptor are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "team_lookup_members" {
  description = "Map of members values across all team_lookup, keyed the same as var.team_lookup except keys with no members are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}
output "team_lookup_name" {
  description = "Map of name values across all team_lookup, keyed the same as var.team_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "team_lookup_project_id" {
  description = "Map of project_id values across all team_lookup, keyed the same as var.team_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "team_lookup_top" {
  description = "Map of top values across all team_lookup, keyed the same as var.team_lookup except keys with no top are omitted"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.top if v.top != null }
}

