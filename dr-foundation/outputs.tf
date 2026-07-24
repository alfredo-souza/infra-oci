output "compartments" {
  description = "IDs de todos os compartimentos gerenciados pelo Terraform"
  value = {
    # Roots
    dr_foundation_infra = oci_identity_compartment.dr_foundation_infra.id
    dr_workload         = oci_identity_compartment.dr_workload.id
    
    # Filhos
    dr_network          = oci_identity_compartment.dr_network.id
    dr_security         = oci_identity_compartment.dr_security.id
    dr_shared           = oci_identity_compartment.dr_shared.id
    dr_sas_exadata_prd  = oci_identity_compartment.dr_sas_exadata_prd.id
  }
}
