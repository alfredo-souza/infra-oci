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
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.desenv.id
  cidr_block                 = "10.67.16.0/20"
  display_name               = "sub-sa-saopaulo-1-desenv-pub" # Ajustado para o nome real na OCI
  dns_label                  = "subdesenvpub"
  prohibit_public_ip_on_vnic = false
  
  # Na OCI, esta subnet está apontando para a Route Table Default
  route_table_id             = oci_core_route_table.desenv_default.id
  
  # Mantendo as duas Security Lists que estão ativas na OCI
  security_list_ids = [
    oci_core_security_list.desenv_pub.id,
    oci_core_security_list.desenv_default.id
  ]
}

resource "oci_core_subnet" "desenv_priv" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.desenv.id
  cidr_block                 = "10.67.0.0/20"
  display_name               = "sub-sa-vinhedo-1-desenv-priv"
  dns_label                  = "subdesenvpriv"
  prohibit_public_ip_on_vnic = true
  
  # Na OCI, esta subnet está apontando para a Route Table Default
  route_table_id             = oci_core_route_table.desenv_default.id
  
  # Mantendo as duas Security Lists que estão ativas na OCI
  security_list_ids = [
    oci_core_security_list.desenv_priv.id,
    oci_core_security_list.desenv_default.id
  ]
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "desenv_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "desenv_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}