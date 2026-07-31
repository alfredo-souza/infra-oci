resource "oci_core_vcn" "desenv" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.67.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-desenv"
  dns_label      = "vcnsavinhedo1de"
}