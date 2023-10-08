data "tfe_organization" "tfc_org_name" {
  name = "nlosg-utokan"
}

data "tfe_oauth_client" "client" {
  organization = "mnlosg-utokan"
  name         = "tfc_github_oauth_client"
}