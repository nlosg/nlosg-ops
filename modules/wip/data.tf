data "tfe_organization" "tfc_org_name" {
  name = "nlosg-utokan"
}

data "google_organization" "gcp_org" {
  domain = "nlosg.com"
}

data "tfe_oauth_client" "oauth_token" {
  oauth_client_id = var.oauth_token_id
}