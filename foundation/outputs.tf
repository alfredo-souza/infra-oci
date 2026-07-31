output "compartments" {
  description = "IDs de todos os compartimentos gerenciados pelo Terraform"
  value = {
    # Roots
    foundation_infra    = oci_identity_compartment.foundation_infra.id
    workload            = oci_identity_compartment.workload.id
    sas_database        = oci_identity_compartment.sas_database.id
    
    # Filhos
    network             = oci_identity_compartment.network.id
    security            = oci_identity_compartment.security.id
    shared              = oci_identity_compartment.shared.id
    sas_exadata_prd     = oci_identity_compartment.sas_exadata_prd.id
    sas_exadata_stg     = oci_identity_compartment.sas_exadata_stg.id
    sas_peoplesoft_prd  = oci_identity_compartment.sas_peoplesoft_prd.id
    sas_peoplesoft_hml  = oci_identity_compartment.sas_peoplesoft_hml.id
    sas_peoplesoft_dsv  = oci_identity_compartment.sas_peoplesoft_dsv.id
  }
}

output "vcns" {
  description = "IDs das VCNs gerenciadas"
  value = {
    desenv = oci_core_vcn.desenv.id
    homol  = oci_core_vcn.homol.id
    prod   = oci_core_vcn.prod.id
    shared = oci_core_vcn.shared.id
  }
}

# ==========================================
# OUTPUTS DE REDE (Subnets, RTs e SLs)
# ==========================================

output "subnets" {
  description = "IDs das Subnets gerenciadas"
  value = {
    # Desenv
    desenv_pub       = oci_core_subnet.desenv_pub.id
    desenv_priv      = oci_core_subnet.desenv_priv.id
    
    # Homol
    homol_exa_backup = oci_core_subnet.homol_exa_backup.id
    homol_exa_client = oci_core_subnet.homol_exa_client.id
    homol_pub        = oci_core_subnet.homol_pub.id
    homol_priv       = oci_core_subnet.homol_priv.id
    
    # Prod
    prod_exa_client  = oci_core_subnet.prod_exa_client.id
    prod_exa_backup  = oci_core_subnet.prod_exa_backup.id
    prod_pub         = oci_core_subnet.prod_pub.id
    prod_priv        = oci_core_subnet.prod_priv.id
    
    # Shared
    shared_pub       = oci_core_subnet.shared_pub.id
    shared_priv      = oci_core_subnet.shared_priv.id
  }
}

output "route_tables" {
  description = "IDs das Route Tables gerenciadas"
  value = {
    desenv_pub       = oci_core_route_table.desenv_pub.id
    desenv_priv      = oci_core_route_table.desenv_priv.id
    homol_pub        = oci_core_route_table.homol_pub.id
    homol_priv       = oci_core_route_table.homol_priv.id
    prod_pub         = oci_core_route_table.prod_pub.id
    prod_priv        = oci_core_route_table.prod_priv.id
    shared_pub       = oci_core_route_table.shared_pub.id
    shared_priv      = oci_core_route_table.shared_priv.id
  }
}

output "security_lists" {
  description = "IDs das Security Lists gerenciadas"
  value = {
    desenv_pub       = oci_core_security_list.desenv_pub.id
    desenv_priv      = oci_core_security_list.desenv_priv.id
    homol_pub        = oci_core_security_list.homol_pub.id
    homol_priv       = oci_core_security_list.homol_priv.id
    prod_pub         = oci_core_security_list.prod_pub.id
    prod_priv        = oci_core_security_list.prod_priv.id
    shared_pub       = oci_core_security_list.shared_pub.id
    shared_priv      = oci_core_security_list.shared_priv.id
  }
}