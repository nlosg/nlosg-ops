module "nlosg-app-xyz" {
  source = "./modules/app-projects"

  app_project     = "prj-nlosg-xyz-a"
  service_account = module.sa-xyz.prj_service_account
}