variable "sa_project" {
  type = string
}

variable "prj_service_account" {
  type = string
}

variable "gcp_org_id" {
  type = string
}

variable "principal" {
  type = string
}

variable "sa_role_list" {
  description = "Roles required for the TF SA"
  type        = list(string)
  default = [
    "roles/editor",
    "roles/serviceusage.services.list"
  ]
}