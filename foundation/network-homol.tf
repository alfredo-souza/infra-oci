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
resource "oci_core_subnet" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}

resource "oci_core_subnet" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}

resource "oci_core_subnet" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}

resource "oci_core_subnet" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}

# --- ROUTE TABLES ---
resource "oci_core_route_table" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [route_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_route_table" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [route_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_route_table" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [route_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_route_table" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [route_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_route_table" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [route_rules, defined_tags, freeform_tags]
  }
}

# --- SECURITY LISTS ---
resource "oci_core_security_list" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_security_list" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_security_list" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_security_list" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags]
  }
}

resource "oci_core_security_list" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
  lifecycle {
    ignore_changes = [ingress_security_rules, egress_security_rules, defined_tags, freeform_tags]
  }
}