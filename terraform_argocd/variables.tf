variable "chart_version" {
  description = "Helm Chart Version of ArgoCD: https://github.com/argoproj/argo-helm/releases"
  type        = string
  default     = "5.46.0"
}

variable "config_context" {
  description = "Config context for cluster"
  type        = string
}
