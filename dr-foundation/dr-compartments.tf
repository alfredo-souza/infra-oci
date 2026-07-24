# ==========================================
# COMPARTIMENTOS ROOT (Nível da Tenancy)
# ==========================================
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


# ==========================================
# SUB-COMPARTIMENTOS (Filhos)
# ==========================================

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