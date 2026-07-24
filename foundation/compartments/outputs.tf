output "compartments" {
  description = "IDs de todos os compartimentos gerenciados pelo Terraform"
  value = {
    # Roots
    foundation_infra    = oci_identity_compartment.foundation_infra.id
    workload            = oci_identity_compartment.workload.id
    dr_foundation_infra = oci_identity_compartment.dr_foundation_infra.id
    dr_workload         = oci_identity_compartment.dr_workload.id
    sas_database        = oci_identity_compartment.sas_database.id
    
    # Filhos
    network             = oci_identity_compartment.network.id
    security            = oci_identity_compartment.security.id
    shared              = oci_identity_compartment.shared.id
    sas_exadata_prd     = oci_identity_compartment.sas_exadata_prd.id
    sas_exadata_stg     = oci_identity_compartment.sas_exadata_stg.id
    dr_network          = oci_identity_compartment.dr_network.id
    dr_security         = oci_identity_compartment.dr_security.id
    dr_shared           = oci_identity_compartment.dr_shared.id
    dr_sas_exadata_prd  = oci_identity_compartment.dr_sas_exadata_prd.id
  }
}