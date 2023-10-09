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
  type = string
}

variable "github_repository" {
  type = string
}

variable "branch" {
  type = string
}

variable "GITHUB_TOKEN" {
  type = string
}

/*variable "folder_id" {
  type = string
}*/

variable "gcp_service_list" {
  description = "APIs required for the project"
  type        = list(string)
  default = [
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "sts.googleapis.com",
    "iamcredentials.googleapis.com",
    "serviceusage.googleapis.com"
  ]
}

variable "tf_role_list" {
  description = "Roles required for the TF SA"
  type        = list(string)
  default = [
    "roles/editor",
    roles/serviceusage.serviceUsageAdmin
  ]
}

/*variable "OAUTH_TOKEN" {
  type = string
}*/