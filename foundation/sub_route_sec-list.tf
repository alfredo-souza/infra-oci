# ==========================================
# DESENV - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "desenv_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
resource "oci_core_subnet" "desenv_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.desenv.id
}
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

# ==========================================
# HOMOL - SUBNETS, RTs e SLs
# ==========================================
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
resource "oci_core_route_table" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_route_table" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_route_table" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_route_table" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_route_table" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_security_list" "homol_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_security_list" "homol_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_security_list" "homol_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_security_list" "homol_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}
resource "oci_core_security_list" "homol_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.homol.id
}

# ==========================================
# PROD - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "prod_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_subnet" "prod_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_subnet" "prod_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_subnet" "prod_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_route_table" "prod_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_route_table" "prod_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_route_table" "prod_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_route_table" "prod_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_route_table" "prod_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_security_list" "prod_exa_backup" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_security_list" "prod_exa_client" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_security_list" "prod_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_security_list" "prod_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}
resource "oci_core_security_list" "prod_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.prod.id
}

# ==========================================
# SHARED - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "shared_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_subnet" "shared_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_route_table" "shared_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_route_table" "shared_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_route_table" "shared_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_security_list" "shared_pub" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_security_list" "shared_priv" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}
resource "oci_core_security_list" "shared_default" {
  compartment_id = oci_identity_compartment.network.id
  vcn_id         = oci_core_vcn.shared.id
}