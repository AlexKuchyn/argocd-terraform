module "argocd-dev" {
  source           = "./terraform_argocd_helmchart_eks"
  eks_cluster_name = "alex-dev"
  chart_version    = "5.46.2"
}

module "argocd-test" {
  source           = "./terraform_argocd_helmchart_eks"
  eks_cluster_name = "alex-test"
  chart_version    = "5.39.1"
}
