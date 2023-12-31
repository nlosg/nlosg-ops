module "wi-pool-xyz" {
  source = "./modules/wip"

  tfc_hostname                       = var.tfc_hostname
  tfc_project_name                   = "nlosg-xyz"
  tfc_workspace_name                 = "nlosg-xyz"
  gcp_wi_project                     = "nlosg-wi-xyz"
  gcp_org_id                         = "519726315968"
  tfc_wi_pool                        = "nlosg-wi-xyz"
  workload_identity_pool_provider_id = "nlosg-wi-xyz"
  tfc_service_account                = "sa-tf-nlosg-xyz"
  github_repository                  = "nlosg-xyz"
  branch                             = var.branch
  GITHUB_TOKEN                       = var.GITHUB_TOKEN
  # folder_id = "nlosgg dev"
}

module "wi-pool-abc" {
  source = "./modules/wip"

  tfc_hostname                       = var.tfc_hostname
  tfc_project_name                   = "nlosg-abc"
  tfc_workspace_name                 = "nlosg-abc"
  gcp_wi_project                     = "nlosg-wi-abc"
  gcp_org_id                         = "519726315968"
  tfc_wi_pool                        = "nlosg-wi-abc"
  workload_identity_pool_provider_id = "nlosg-wi-abc"
  tfc_service_account                = "sa-tf-nlosg-abc"
  github_repository                  = "nlosg-abc"
  branch                             = var.branch
  GITHUB_TOKEN                       = var.GITHUB_TOKEN
  # folder_id = "nlosgg dev"
}
