# this part installs ArgoCD into clusters

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

# -----------------------------------------------------------------------
# this part installs ArgoCD root applications into clusters
# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd-dev]
module "argocd_dev_root_app" {
  source             = "./terraform_argocd_rootapp_eks"
  eks_cluster_name   = "alex-dev"
  git_source_path    = "alex-dev/applications"
  git_source_repoURL = "git@github.com:AlexKuchyn/argocd.git"
}

# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd-test]
module "argocd_test_root_app" {
  source             = "./terraform_argocd_rootapp_eks"
  eks_cluster_name   = "alex-test"
  git_source_path    = "alex-test/applications"
  git_source_repoURL = "git@github.com:AlexKuchyn/argocd.git"
}
