variable "gcp_wi_project" {
  type    = string
  default = ""
}

variable "gcp_org_id" {
  type    = string
  default = ""
}

variable "tfc_wi_pool" {
  type    = string
  default = ""
}

variable "tfc_service_account" {
  type    = string
  default = ""
}

variable "workload_identity_pool_provider_id" {
  type    = string
  default = ""
}

variable "tfc_project_name" {
  type        = string
  default     = ""
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type    = string
  default = ""
}

variable "tfc_hostname" {
  type    = string
  default = "app.terraform.io"
}

variable "github_repository" {
  type    = string
  default = ""
}

variable "branch" {
  type    = string
  default = "main"
}

/*variable "folder_id" {
  type = string
  default = ""
}*/

variable "GITHUB_TOKEN" {
  type    = string
  default = ""
}

/*variable "OAUTH_TOKEN" {
  type = string
  default = ""
}*/