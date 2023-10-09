variable "app_project" {
	type = string
}

variable "service_account" {
	type = string
}

variable "gcp_org_id" {
	type = string
}

variable "app_sa_role_list" {
  description = "Roles required for the TF SA"
  type        = list(string)
  default = [
    "roles/editor",
    "roles/serviceusage.serviceUsageAdmin"
    "roles/owner"
  ]
}