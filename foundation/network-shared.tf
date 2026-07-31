# ==========================================
# REDE - SHARED (COMPARTILHADA)
# ==========================================

resource "oci_core_vcn" "shared" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.64.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-shared"
  dns_label      = "vcnsavinhedo1sh"
}

# --- SUBNETS ---
resource "oci_core_subnet" "shared_pub" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.shared.id
  cidr_block                 = "10.64.16.0/20"
  display_name               = "sub-sa-vinhedo-1-shared-pub"
  dns_label                  = "subsharedpub"
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.shared_pub.id
  security_list_ids          = [oci_core_security_list.shared_pub.id]
}

resource "oci_core_subnet" "shared_priv" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.shared.id
  cidr_block                 = "10.64.0.0/20"
  display_name               = "sub-sa-vinhedo-1-shared-priv"
  dns_label                  = "subsharedpriv"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.shared_priv.id
  security_list_ids          = [oci_core_security_list.shared_priv.id]
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "shared_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "shared_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "shared_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "shared_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "shared_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "shared_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}