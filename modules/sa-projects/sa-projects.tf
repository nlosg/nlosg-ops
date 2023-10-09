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

  depends_on = [
    module.wip
  ]
}

resource "google_service_account_iam_member" "projects_sa_member" {
  service_account_id = google_service_account.projects_sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "principalSet://iam.googleapis.com/${module.wip.google_iam_workload_identity_pool.tfc_pool.name}/*"

  depends_on = [
    module.wip.google_iam_workload_identity_pool.tfc_pool
  ]
}

resource "google_project_iam_member" "tfc_project_member" {
  project = google_project.sa_project.id
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.projects_sa.email}"
}
