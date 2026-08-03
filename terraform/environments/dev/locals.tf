locals {
  project_name = "resumeops"
  environment  = "dev"

  name_prefix = "${local.project_name}-${local.environment}"
}