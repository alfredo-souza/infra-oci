terraform {
  cloud {
    organization = "Docway"
    workspaces {
      name = "infra-oci-foundation" # troque para -qa-, -stage-, -prod- conforme o ambiente
    }
  }
}
