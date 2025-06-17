variable "github_token" {
  description = "GitHub token with repo permissions"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub organization or user"
  type        = string
}

variable "repo_name" {
  description = "Name of the new repository"
  type        = string
}

variable "template_repo" {
  description = "Name of the template repository"
  type        = string
  default     = "express-nodejs-template"
}