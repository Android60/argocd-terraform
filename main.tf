module "argocd_dev" {
  source         = "./terraform_argocd"
  chart_version  = "5.46.7"
  config_context = "dev"
}


module "argocd_prod" {
  source         = "./terraform_argocd"
  chart_version  = "5.46.2"
  config_context = "prod"
}


# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_dev]
module "argocd_dev_root" {
  source             = "./argocd_root_app"
  config_context     = "dev"
  git_source_path    = "demo-dev/applications"
  git_source_repoURL = "git@github.com:Android60/argocd.git"
}

# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_dev]
module "argocd_prod_root" {
  source             = "./argocd_root_app"
  config_context     = "prod"
  git_source_path    = "demo-prod/applications"
  git_source_repoURL = "git@github.com:Android60/argocd.git"
}
