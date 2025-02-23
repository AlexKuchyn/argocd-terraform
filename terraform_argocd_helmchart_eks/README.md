Module to deploy Higly Availabe ArgoCD via HelmChart to EKS
Example to use:
```
module "argocd" {
  source           = "./terraform_argocd_helmchart_eks"
  eks_cluster_name = "{cluster_name}"
  chart_version    = "5.46.2"
}
```
