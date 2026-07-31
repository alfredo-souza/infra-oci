terraform {
  cloud {
    organization = "Docway"
    workspaces {
      name = "infra-oci-foundation" 
    }
  }
}
