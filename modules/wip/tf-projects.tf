resource "tfe_project" "tfc_project_name" {
  organization = data.tfe_organization.tfc_org_name.name
  name         = var.tfc_project_name
}