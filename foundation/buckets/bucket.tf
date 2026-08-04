resource "oci_objectstorage_bucket" "rhel_image" {
  access_type           = "NoPublicAccess"
  auto_tiering          = "Disabled"
  bucket_scope          = "NAMESPACE"
  
  # Utilizando a referência do compartimento importado ao invés do OCID hardcoded
  compartment_id        = oci_identity_compartment.shared.id
  
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "sulamericaoci/alfredo.souza@sulamerica.com.br"
    "Oracle-Tags.CreatedOn" = "2026-07-30T12:15:42.619Z"
  }
  freeform_tags         = {}
  is_bucket_key_enabled = false
  metadata              = {}
  name                  = "rhel-image"
  namespace             = "axybenm6d4ev"
  object_events_enabled = false
  storage_tier          = "Standard"
  versioning            = "Disabled"

  # Flag para ignorar as tags caso elas sejam alteradas via Console
  lifecycle {
    ignore_changes = [
      defined_tags,
      freeform_tags
    ]
  }
}


resource "oci_objectstorage_bucket" "storage_commvault" {
  access_type           = "NoPublicAccess"
  auto_tiering          = "Disabled"
  bucket_scope          = "NAMESPACE"
  
  # Utilizando a referência do compartimento importado ao invés do OCID hardcoded
  compartment_id        = oci_identity_compartment.backup.id
  
  freeform_tags         = {}
  is_bucket_key_enabled = false
  metadata              = {}
  name                  = "storage-commvault-sas"
  namespace             = "axybenm6d4ev"
  object_events_enabled = false
  storage_tier          = "Standard"
  versioning            = "Disabled"

  # Flag para ignorar as tags caso elas sejam alteradas via Console
  lifecycle {
    ignore_changes = [
      defined_tags,
      freeform_tags,
    ]
  }
}