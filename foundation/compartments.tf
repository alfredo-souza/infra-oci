locals {
  tags_foundation = {
    "projeto"      = "sas-foundation-infra"
    "domínio"      = "tecnologia"
    "contexto"     = "indireto"
    "sub-contexto" = "infraestrutura"
    "uc_pop"       = "0186"
    "uc_pgto"      = "0186"
    "vertical"     = "infraestrutura e operações"
    "sub-area"     = "div infra e telecomunicações"
    "head"         = "marcelo-fonseca"
    "manager"      = "paulo-casal"
    "owner"        = "leonardo-muniz"
    "ambiente"     = "82"
  }
}


# ==========================================
# COMPARTIMENTOS ROOT (Nível da Tenancy)
# ==========================================
resource "oci_identity_compartment" "foundation_infra" {
  compartment_id = var.tenancy_ocid
  name           = "foundation-infra"
  description    = "Comparment onde serão organizados os recursos de infraestrutura"
  freeform_tags  = local.tags_foundation
}

resource "oci_identity_compartment" "workload" {
  compartment_id = var.tenancy_ocid
  name           = "workload"
  description    = "Comparment onde serão organizados os recursos aplicacionais"
}

resource "oci_identity_compartment" "sas_database" {
  compartment_id = var.tenancy_ocid
  name           = "SAS_Database"
  description    = "Compartimento de Banco de Dados"
}

# ==========================================
# SUB-COMPARTIMENTOS (Filhos)
# ==========================================

# Filhos de foundation-infra
resource "oci_identity_compartment" "network" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "network"
  description    = "Comparment onde serão organizados os recursos de network"
  freeform_tags  = local.tags_foundation
}

resource "oci_identity_compartment" "security" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "security"
  description    = "Comparment onde serão organizados os recursos de segurança"
  freeform_tags  = local.tags_foundation
}

resource "oci_identity_compartment" "shared" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "shared"
  description    = "Comparment onde serão organizados os recursos compartilhados"
  freeform_tags  = local.tags_foundation
}

# Filhos de workload
resource "oci_identity_compartment" "sas_exadata_prd" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-exadata-prd"
  description    = "Comparment onde serão organizados os recursos aplicacionais do exadata"
}

resource "oci_identity_compartment" "sas_exadata_stg" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-exadata-stg"
  description    = "Comparment onde serão organizados os recursos aplicacionais do exadata de stage"
}

resource "oci_identity_compartment" "sas_peoplesoft_prd" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-prd"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de produção"
}

resource "oci_identity_compartment" "sas_peoplesoft_hml" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-hml"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de homologação"
}

resource "oci_identity_compartment" "sas_peoplesoft_dsv" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-dsv"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de desenvolvimento"
}

resource "oci_identity_compartment" "sas_peoplesoft_dmo" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-dmo"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de DMO"
}