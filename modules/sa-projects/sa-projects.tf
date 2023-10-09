#Projects for SA to impersonate
resource "google_project" "sa_project" {
  name       = var.sa_project
  project_id = var.sa_project
  org_id     = var.gcp_org_id
}

resource "google_service_account" "projects_sa" {
  account_id   = var.prj_service_account
  display_name = "Project Service Account"
  project      = var.sa_project
}

resource "google_service_account_iam_member" "projects_sa_member" {
  service_account_id = google_service_account.projects_sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = var.principal

}

resource "google_project_iam_member" "tfc_project_member" {
  project = google_project.sa_project.id
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.projects_sa.email}"
}
