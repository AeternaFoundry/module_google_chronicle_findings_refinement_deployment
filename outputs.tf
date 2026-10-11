output "chronicle_findings_refinement_deployments_id" {
  description = "Map of id values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no id are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_findings_refinement_deployments_archived" {
  description = "Map of archived values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no archived are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.archived if v.archived != null }
}
output "chronicle_findings_refinement_deployments_detection_exclusion_application" {
  description = "Map of detection_exclusion_application values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no detection_exclusion_application are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => one(v.detection_exclusion_application) if v.detection_exclusion_application != null && length(v.detection_exclusion_application) > 0 }
}
output "chronicle_findings_refinement_deployments_enabled" {
  description = "Map of enabled values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no enabled are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.enabled if v.enabled != null }
}
output "chronicle_findings_refinement_deployments_findings_refinement" {
  description = "Map of findings_refinement values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no findings_refinement are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.findings_refinement if v.findings_refinement != null && length(v.findings_refinement) > 0 }
}
output "chronicle_findings_refinement_deployments_instance" {
  description = "Map of instance values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_findings_refinement_deployments_location" {
  description = "Map of location values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no location are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_findings_refinement_deployments_name" {
  description = "Map of name values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no name are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_findings_refinement_deployments_project" {
  description = "Map of project values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no project are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_findings_refinement_deployments_update_time" {
  description = "Map of update_time values across all chronicle_findings_refinement_deployments, keyed the same as var.chronicle_findings_refinement_deployments except keys with no update_time are omitted"
  value       = { for k, v in google_chronicle_findings_refinement_deployment.chronicle_findings_refinement_deployments : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

