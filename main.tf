resource "google_chronicle_findings_refinement_deployment" "chronicle_findings_refinement_deployments" {
  for_each = var.chronicle_findings_refinement_deployments

  findings_refinement = each.value.findings_refinement
  instance            = each.value.instance
  location            = each.value.location
  archived            = each.value.archived
  enabled             = each.value.enabled
  project             = each.value.project

  dynamic "detection_exclusion_application" {
    for_each = each.value.detection_exclusion_application != null ? [each.value.detection_exclusion_application] : []
    content {
      curated_rule_sets = detection_exclusion_application.value.curated_rule_sets
      curated_rules     = detection_exclusion_application.value.curated_rules
      rules             = detection_exclusion_application.value.rules
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

