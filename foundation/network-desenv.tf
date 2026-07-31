# ==========================================
# REDE - DESENVOLVIMENTO
# ==========================================

resource "oci_core_vcn" "desenv" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.67.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-desenv"
  dns_label      = "vcnsavinhedo1de"
}

# --- SUBNETS ---
resource "oci_core_subnet" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_subnet" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_route_table" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_route_table" "desenv_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_security_list" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_security_list" "desenv_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}