# ==========================================
# REDE - HOMOLOGAÇÃO
# ==========================================

resource "oci_core_vcn" "homol" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.66.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-homol"
  dns_label      = "vcnsavinhedo1ho"
}

# --- SUBNETS ---
resource "oci_core_subnet" "homol_pub" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.homol.id
  cidr_block                 = "10.66.16.0/20"
  display_name               = "sub-sa-vinhedo-1-homol-pub"
  dns_label                  = "subhomolpub"
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.homol_pub.id
  security_list_ids          = [oci_core_security_list.homol_pub.id]
}

resource "oci_core_subnet" "homol_priv" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.homol.id
  cidr_block                 = "10.66.0.0/20"
  display_name               = "sub-sa-vinhedo-1-homol-priv"
  dns_label                  = "subhomolpriv"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.homol_priv.id
  security_list_ids          = [oci_core_security_list.homol_priv.id]
}

resource "oci_core_subnet" "homol_exa_client" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.homol.id
  cidr_block                 = "10.66.32.0/24"
  display_name               = "sub-sa-vinhedo-1-homol-exa-client"
  dns_label                  = "subhomolexaclt"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.homol_exa_client.id
  security_list_ids          = [oci_core_security_list.homol_exa_client.id]
}

resource "oci_core_subnet" "homol_exa_backup" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.homol.id
  cidr_block                 = "10.66.33.0/24"
  display_name               = "sub-sa-vinhedo-1-homol-exa-backup"
  dns_label                  = "subhomolexabkup"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.homol_exa_backup.id
  security_list_ids          = [oci_core_security_list.homol_exa_backup.id]
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}