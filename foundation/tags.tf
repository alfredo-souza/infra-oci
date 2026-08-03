# Cria o Namespace (geralmente criado no compartimento root/tenancy)
resource "oci_identity_tag_namespace" "finops_tags" {
  compartment_id = var.tenancy_ocid
  name           = "finops" # O nome do Namespace pode ter caracteres normais na OCI (mas evite espaços)
  description    = "Namespace para tags de faturamento da SulAmerica"
  is_retired     = false
}

# Lista com os nomes das suas 12 tags
locals {
  tag_keys = [
    "projeto",
    "dominio",
    "contexto",
    "sub-contexto",
    "uc_pop",
    "uc_pgto",
    "vertical",
    "sub-area",
    "head",
    "manager",
    "owner",
    "ambiente"
  ]
}

# Cria todas as 12 tags dentro do Namespace criado acima
resource "oci_identity_tag" "sas_tags" {
  for_each         = toset(local.tag_keys)
  tag_namespace_id = oci_identity_tag_namespace.finops_tags.id
  name             = each.value
  description      = "Tag de finops: ${each.value}"
  is_retired       = false
}