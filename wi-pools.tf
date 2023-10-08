module "wi-pools" {
	source = "./modules/wip"

	gcp_wi_project = "nlosg-wi-dev"
	gcp_org_id = "519726315968"
	tfc_wi_pool = "nlosg-wi-dev"
	tfc_service_account = "tf-sa-dev"
}