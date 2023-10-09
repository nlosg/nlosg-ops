data "tfe_organization" "tfc_org_name" {
  name = "nlosg-utokan"
}

data "google_organization" "gcp_org" {
  domain = "nlosg.com"
}

data "tfe_oauth_client" "client" {
  organization = "nlosg-utokan"
  name         = "tfc_github_oauth_client"
}