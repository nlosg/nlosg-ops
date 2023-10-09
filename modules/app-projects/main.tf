resource "google_project_service" "services" {
  for_each                   = toset(var.gcp_service_list)
  service                    = each.value
  project                    = var.app_project
  disable_dependent_services = true
}