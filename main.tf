terraform{
    required_providers {
        github = {
            source = "integrations/github"
            version = "~> 5.0"
        }
    }
}

provider "github" {
    token = var.github_token
    owner = var.github_owner
}

resource "github_repository" "source_code_repo" {
  name        = var.repo_name
  count       = var.delete ? 0 : 1
  description = "${var.repo_name}"
  visibility  = "private"
  template {
    owner      = var.github_owner
    repository = "humix-srv-template"
  }
}

resource "github_repository" "config_repo" {
  name        = "${var.repo_name}-config"
  count       = var.delete ? 0 : 1
  description = "Config repository for ${var.repo_name}"
  visibility  = "private"
    template {
    owner      = var.github_owner
    repository = "humix-srv-template-config"
  }
}