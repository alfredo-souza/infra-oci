locals {
  tags_foundation_defined = {
    "finops.projeto"      = "sas-foundation-infra"
    "finops.dominio"      = "tecnologia"                     
    "finops.contexto"     = "indireto"
    "finops.sub-contexto" = "infraestrutura"
    "finops.uc_pop"       = "0186"
    "finops.uc_pgto"      = "0186"
    "finops.vertical"     = "infraestrutura e operacoes"     
    "finops.sub-area"     = "div infra e telecomunicacoes"  
    "finops.head"         = "marcelo-fonseca"
    "finops.manager"      = "paulo-casal"
    "finops.owner"        = "leonardo-muniz"
    "finops.ambiente"     = "82"
  }
}


# ==========================================
# COMPARTIMENTOS ROOT (Nível da Tenancy)
# ==========================================
resource "oci_identity_compartment" "foundation_infra" {
  compartment_id = var.tenancy_ocid
  name           = "foundation-infra"
  description    = "Comparment onde serão organizados os recursos de infraestrutura"
  # 1. Aplica as suas novas tags de FinOps
  defined_tags   = local.tags_foundation_defined 
  
  # 2. Força a exclusão de qualquer freeform_tag que exista lá na nuvem
  freeform_tags  = {}
  
  # 3. Blinda EXATAMENTE as tags da Oracle para que o Terraform não as apague
  lifecycle {
    ignore_changes = [
      defined_tags["Oracle-Tags.CreatedBy"],
      defined_tags["Oracle-Tags.CreatedOn"]
    ]
  }
}

resource "oci_identity_compartment" "workload" {
  compartment_id = var.tenancy_ocid
  name           = "workload"
  description    = "Comparment onde serão organizados os recursos aplicacionais"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_database" {
  compartment_id = var.tenancy_ocid
  name           = "SAS_Database"
  description    = "Compartimento de Banco de Dados"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

# ==========================================
# SUB-COMPARTIMENTOS (Filhos)
# ==========================================

# Filhos de foundation-infra
resource "oci_identity_compartment" "network" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "network"
  description    = "Comparment onde serão organizados os recursos de network"
  # 1. Aplica as suas novas tags de FinOps
  defined_tags   = local.tags_foundation_defined 
  
  # 2. Força a exclusão de qualquer freeform_tag que exista lá na nuvem
  freeform_tags  = {}
  
  # 3. Blinda EXATAMENTE as tags da Oracle para que o Terraform não as apague
  lifecycle {
    ignore_changes = [
      defined_tags["Oracle-Tags.CreatedBy"],
      defined_tags["Oracle-Tags.CreatedOn"]
    ]
  }
}

resource "oci_identity_compartment" "security" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "security"
  description    = "Comparment onde serão organizados os recursos de segurança"
  # 1. Aplica as suas novas tags de FinOps
  defined_tags   = local.tags_foundation_defined 
  
  # 2. Força a exclusão de qualquer freeform_tag que exista lá na nuvem
  freeform_tags  = {}
  
  # 3. Blinda EXATAMENTE as tags da Oracle para que o Terraform não as apague
  lifecycle {
    ignore_changes = [
      defined_tags["Oracle-Tags.CreatedBy"],
      defined_tags["Oracle-Tags.CreatedOn"]
    ]
  }
}

resource "oci_identity_compartment" "shared" {
  compartment_id = oci_identity_compartment.foundation_infra.id
  name           = "shared"
  description    = "Comparment onde serão organizados os recursos compartilhados"
  # 1. Aplica as suas novas tags de FinOps
  defined_tags   = local.tags_foundation_defined 
  
  # 2. Força a exclusão de qualquer freeform_tag que exista lá na nuvem
  freeform_tags  = {}
  
  # 3. Blinda EXATAMENTE as tags da Oracle para que o Terraform não as apague
  lifecycle {
    ignore_changes = [
      defined_tags["Oracle-Tags.CreatedBy"],
      defined_tags["Oracle-Tags.CreatedOn"]
    ]
  }
}

# Filhos de workload
resource "oci_identity_compartment" "sas_exadata_prd" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-exadata-prd"
  description    = "Comparment onde serão organizados os recursos aplicacionais do exadata"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_exadata_stg" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-exadata-stg"
  description    = "Comparment onde serão organizados os recursos aplicacionais do exadata de stage"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_peoplesoft_prd" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-prd"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de produção"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_peoplesoft_hml" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-hml"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de homologação"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_peoplesoft_dsv" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-dsv"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de desenvolvimento"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}

resource "oci_identity_compartment" "sas_peoplesoft_dmo" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "sas-peoplesoft-dmo"
  description    = "Comparment onde serão organizados os recursos aplicacionais do peoplesoft de DMO"
  lifecycle {
    ignore_changes = [defined_tags]
  }
}