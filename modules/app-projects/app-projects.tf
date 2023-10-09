#Project for managing applcations
resource "google_project" "app_project" {
  name       = var.app_project
  project_id = var.app_project
  org_id     = var.gcp_org_id
}

resource "google_project_iam_member" "app_project_member" {
  project = google_project.app_project.id
  role    = "roles/editor"
  member  = var.service_account
}