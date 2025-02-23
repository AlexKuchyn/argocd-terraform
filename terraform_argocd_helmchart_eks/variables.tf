variable "chart_version" {
  description = "Helm Chart Version of ArgoCD: https://github.com/argoproj/argo-helm/releases"
  type        = string
  default     = "5.46.0"
}

variable "eks_cluster_name" {
  description = "EKS cluster in which ArgoCD is being deployed into"
  type        = string
}
