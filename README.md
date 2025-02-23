Module to deploy ArgoCD ROOT Applicaiton to EKS
Example to use:

module "argocd_root" {
  source             = "./terraform_argocd_rootapp_eks"
  eks_cluster_name   = "{cluster_name}"
  git_source_path    = "{folder_name}/applications"
  git_source_repoURL = "git@github.com:{your-repo}"
}
