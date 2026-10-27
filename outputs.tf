output "team_lookup_id" {
  description = "Map of id values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.id }
}
output "team_lookup_administrators" {
  description = "Map of administrators values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.administrators }
}
output "team_lookup_description" {
  description = "Map of description values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.description }
}
output "team_lookup_descriptor" {
  description = "Map of descriptor values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.descriptor }
}
output "team_lookup_members" {
  description = "Map of members values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.members }
}
output "team_lookup_name" {
  description = "Map of name values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.name }
}
output "team_lookup_project_id" {
  description = "Map of project_id values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.project_id }
}
output "team_lookup_top" {
  description = "Map of top values across all team_lookup, keyed the same as var.team_lookup"
  value       = { for k, v in data.azuredevops_team.team_lookup : k => v.top }
}

