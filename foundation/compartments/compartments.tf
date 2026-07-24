# ==========================================
# COMPARTIMENTOS ROOT (Nível da Tenancy)
# ==========================================
resource "oci_identity_compartment" "foundation_infra" {
  compartment_id = var.tenancy_ocid
  name           = "foundation-infra"
  description    = "Comparment onde serão organizados os recursos de infraestrutura"
}

resource "oci_identity_compartment" "workload" {
  compartment_id = var.tenancy_ocid
  name           = "workload"
  description    = "Comparment onde serão organizados os recursos aplicacionais"
}

resource "oci_identity_compartment" "dr_foundation_infra" {
  compartment_id = var.tenancy_ocid
  name           = "dr-foundation-infra"
  description    = "Comparment DR onde serão organizados os recursos de infraestrutura"
}

resource "oci_identity_compartment" "dr_workload" {
  compartment_id = var.tenancy_ocid
  name           = "dr-workload"
  description    = "Comparment DR onde serão organizados os recursos aplicacionais"
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
}

resource "oci_identity_compartment" "security" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "security"
  description    = "Comparment onde serão organizados os recursos de segurança"
}

resource "oci_identity_compartment" "shared" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "shared"
  description    = "Comparment onde serão organizados os recursos compartilhados"
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

# Filhos de dr-foundation-infra
resource "oci_identity_compartment" "dr_network" {
  compartment_id = oci_identity_compartment.dr_foundation_infra.id
  name           = "dr-network"
  description    = "Comparment DR onde serão organizados os recursos de network"
}

resource "oci_identity_compartment" "dr_security" {
  compartment_id = oci_identity_compartment.dr_foundation_infra.id
  name           = "dr-security"
  description    = "Comparment DR onde serão organizados os recursos de segurança"
}

resource "oci_identity_compartment" "dr_shared" {
  compartment_id = oci_identity_compartment.dr_foundation_infra.id
  name           = "dr-shared"
  description    = "Comparment DR onde serão organizados os recursos compartilhados"
}

# Filhos de dr-workload
resource "oci_identity_compartment" "dr_sas_exadata_prd" {
  compartment_id = oci_identity_compartment.dr_workload.id
  name           = "dr-sas-exadata-prd"
  description    = "Comparment DR onde serão organizados os recursos aplicacionais do exadata de produção"
}