data "tfe_organization" "tfc_org_name" {
  name = "nlosg-utokan"
}

data "google_organization" "gcp_org" {
  domain = "nlosg.com"
}