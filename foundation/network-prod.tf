# ==========================================
# REDE - PRODUÇÃO
# ==========================================

resource "oci_core_vcn" "prod" {
  compartment_id = oci_identity_compartment.network.id
  cidr_blocks    = ["10.65.0.0/16"]
  display_name   = "vcn-sa-vinhedo-1-prod"
  dns_label      = "vcnsavinhedo1pr"
}

# --- SUBNETS ---
resource "oci_core_subnet" "prod_pub" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.prod.id
  cidr_block                 = "10.65.16.0/20"
  display_name               = "sub-sa-vinhedo-1-prod-pub"
  dns_label                  = "subprodpub"
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.prod_pub.id
  security_list_ids          = [oci_core_security_list.prod_pub.id]
}

resource "oci_core_subnet" "prod_priv" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.prod.id
  cidr_block                 = "10.65.0.0/20"
  display_name               = "sub-sa-vinhedo-1-prod-priv"
  dns_label                  = "subprodpriv"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.prod_priv.id
  security_list_ids          = [oci_core_security_list.prod_priv.id]
}

resource "oci_core_subnet" "prod_exa_client" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.prod.id
  cidr_block                 = "10.65.32.0/24"
  display_name               = "sub-sa-vinhedo-1-prod-exa-client"
  dns_label                  = "subprodexaclt"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.prod_exa_client.id
  security_list_ids          = [oci_core_security_list.prod_exa_client.id]
}

resource "oci_core_subnet" "prod_exa_backup" {
  compartment_id             = oci_identity_compartment.network.id
  vcn_id                     = oci_core_vcn.prod.id
  cidr_block                 = "10.65.33.0/24"
  display_name               = "sub-sa-vinhedo-1-prod-exa-backup"
  dns_label                  = "subprodexabkup"
  prohibit_public_ip_on_vnic = true
  route_table_id             = oci_core_route_table.prod_exa_backup.id
  security_list_ids          = [oci_core_security_list.prod_exa_backup.id]
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "prod_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "prod_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "prod_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "prod_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

resource "oci_core_route_table" "prod_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [route_rules, defined_tags, freeform_tags] }
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "prod_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "prod_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "prod_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "prod_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}

resource "oci_core_security_list" "prod_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
  lifecycle { ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags] }
}