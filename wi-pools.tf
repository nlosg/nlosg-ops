module "wi-pools" {
	source = "./modules/wip"

	tfc_hostname = var.tfc_hostname
	tfc_project_name = "nlosg-banking"
    tfc_workspace_name = "nlosg-banking-dev"
	gcp_wi_project = "nlosg-wi-dev"
	gcp_org_id = "519726315968"
	tfc_wi_pool = "nlosg-wi-dev"
	workload_identity_pool_provider_id = "nlosg-wi-dev"
	tfc_service_account = "sa-tf-nlosg-dev"
	

}