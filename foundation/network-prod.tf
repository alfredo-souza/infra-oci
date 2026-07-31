resource "oci_core_vcn" "prod" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.65.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-prod"
  dns_label      = "vcnsavinhedo1pr"
}