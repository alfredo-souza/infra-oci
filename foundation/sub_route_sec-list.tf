# ==========================================
# DESENV - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "desenv_pub" {}
resource "oci_core_subnet" "desenv_priv" {}
resource "oci_core_route_table" "desenv_pub" {}
resource "oci_core_route_table" "desenv_priv" {}
resource "oci_core_route_table" "desenv_default" {}
resource "oci_core_security_list" "desenv_priv" {}
resource "oci_core_security_list" "desenv_pub" {}
resource "oci_core_security_list" "desenv_default" {}

# ==========================================
# HOMOL - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "homol_exa_backup" {}
resource "oci_core_subnet" "homol_exa_client" {}
resource "oci_core_subnet" "homol_pub" {}
resource "oci_core_subnet" "homol_priv" {}
resource "oci_core_route_table" "homol_exa_backup" {}
resource "oci_core_route_table" "homol_exa_client" {}
resource "oci_core_route_table" "homol_pub" {}
resource "oci_core_route_table" "homol_priv" {}
resource "oci_core_route_table" "homol_default" {}
resource "oci_core_security_list" "homol_priv" {}
resource "oci_core_security_list" "homol_pub" {}
resource "oci_core_security_list" "homol_exa_client" {}
resource "oci_core_security_list" "homol_exa_backup" {}
resource "oci_core_security_list" "homol_default" {}

# ==========================================
# PROD - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "prod_exa_client" {}
resource "oci_core_subnet" "prod_exa_backup" {}
resource "oci_core_subnet" "prod_pub" {}
resource "oci_core_subnet" "prod_priv" {}
resource "oci_core_route_table" "prod_exa_backup" {}
resource "oci_core_route_table" "prod_exa_client" {}
resource "oci_core_route_table" "prod_pub" {}
resource "oci_core_route_table" "prod_priv" {}
resource "oci_core_route_table" "prod_default" {}
resource "oci_core_security_list" "prod_exa_backup" {}
resource "oci_core_security_list" "prod_exa_client" {}
resource "oci_core_security_list" "prod_pub" {}
resource "oci_core_security_list" "prod_priv" {}
resource "oci_core_security_list" "prod_default" {}

# ==========================================
# SHARED - SUBNETS, RTs e SLs
# ==========================================
resource "oci_core_subnet" "shared_pub" {}
resource "oci_core_subnet" "shared_priv" {}
resource "oci_core_route_table" "shared_pub" {}
resource "oci_core_route_table" "shared_priv" {}
resource "oci_core_route_table" "shared_default" {}
resource "oci_core_security_list" "shared_pub" {}
resource "oci_core_security_list" "shared_priv" {}
resource "oci_core_security_list" "shared_default" {}