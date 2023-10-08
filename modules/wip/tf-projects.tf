resource "tfe_project" "tfc_project_name" {
  organization = var.tfc_org_name
  name         = var.tfc_project_name
}