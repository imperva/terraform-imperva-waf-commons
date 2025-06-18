output "validation" {
  value = local.validation_rules
}

output "options" {
  value = local.options
}

output "constants" {
  value = local.constants
}

# output "builds" {
#   value = local.selectable_builds[var.platform]
# }

output "available_builds" {
  value = jsondecode(data.http.get_waf_builds.response_body)
}