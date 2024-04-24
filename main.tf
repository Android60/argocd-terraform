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
