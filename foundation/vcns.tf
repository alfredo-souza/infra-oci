# ==========================================
# VIRTUAL CLOUD NETWORKS (VCNs)
# ==========================================

resource "oci_core_vcn" "homol" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.66.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-homol"
  dns_label      = "vcnsavinhedo1ho"
}

resource "oci_core_vcn" "prod" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.65.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-prod"
  dns_label      = "vcnsavinhedo1pr"
}

resource "oci_core_vcn" "shared" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.64.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-shared"
  dns_label      = "vcnsavinhedo1sh"
}