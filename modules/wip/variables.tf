variable "gcp_wi_project" {
	type = string
}

variable "gcp_org_id" {
  type = string
}

variable "tfc_wi_pool" {
  type = string
}

variable "tfc_service_account" {
  type = string
}

variable "workload_identity_pool_provider_id" {
  type = string
}

variable "tfc_project_name" {
  type        = string
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type = string
}

variable "tfc_hostname" {
  type    = string
}