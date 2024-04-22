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

variable "sa_project" {
  type    = string
  default = ""
}

variable "prj_service_account" {
  type    = string
  default = ""
}

variable "principal" {
  type    = string
  default = ""
}

variable "app_project" {
  type    = string
  default = ""
}

variable "service_account" {
  type    = string
  default = ""
}

/*variable "OAUTH_TOKEN" {
  type = string
  default = ""
}*/

#Vault credentials

variable "vault_url" {
  type        = string
  description = "The URL of the Vault instance you'd like to use with Terraform Cloud"
}

variable "jwt_backend_path" {
  type        = string
  default     = "jwt"
  description = "The path at which you'd like to mount the jwt auth backend in Vault"
}

variable "tfc_vault_audience" {
  type        = string
  default     = "vault.workload.identity"
  description = "The audience value to use in run identity tokens"
}

variable "tfc_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}