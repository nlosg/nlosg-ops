module "sa-xyz" {
  source = "./modules/sa-projects"

  sa_project          = "nlosg-xyz-dev"
  prj_service_account = "nlosg-xyz-dev"
  gcp_org_id          = "519726315968"
  principal           = module.wi-pool-xyz.wi_pool_name
}