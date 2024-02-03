resource "hcp_hvn" "aws_hcp_vault_hvn" {
  hvn_id         = var.hvn_id
  cloud_provider = "aws"
  region         = "ap-southeast-1"
  
}
resource "hcp_vault_cluster" "aws_hcp_vault_cluster" {
  cluster_id = var.cluster_id
  hvn_id     = hcp_hvn.aws_hcp_vault_hvn.hvn_id
  tier       = var.tier
  public_endpoint = true
}