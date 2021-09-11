## Users & project permissions

resource "google_project_iam_member" "cloudbuild_editor_role" {
  project = var.project_id
  role = "roles/editor"
  member = "serviceAccount:${google_project.project.number}@cloudbuild.gserviceaccount.com"
}

resource "google_project_iam_member" "carolina_viewer_role" {
  project = var.project_id
  role = "roles/viewer"
  member = "user:carogatica.59@gmail.com"
}
