resource "oci_core_vcn" "homol" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.66.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-homol"
  dns_label      = "vcnsavinhedo1ho"
}