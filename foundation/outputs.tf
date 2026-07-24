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