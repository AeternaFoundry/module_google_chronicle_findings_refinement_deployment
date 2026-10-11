variable "chronicle_findings_refinement_deployments" {
  description = <<EOT
Map of chronicle_findings_refinement_deployments, attributes below
Required:
    - findings_refinement
    - instance
    - location
Optional:
    - archived
    - enabled
    - project
    - detection_exclusion_application (block):
        - curated_rule_sets (optional)
        - curated_rules (optional)
        - rules (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    findings_refinement = string
    instance            = string
    location            = string
    archived            = optional(bool)
    enabled             = optional(bool)
    project             = optional(string)
    detection_exclusion_application = optional(object({
      curated_rule_sets = optional(list(string))
      curated_rules     = optional(list(string))
      rules             = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

