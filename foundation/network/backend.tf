terraform {
  cloud {
    organization = "Docway"
    workspaces {
      name = "infra-oci-network" # troque para -qa-, -stage-, -prod- conforme o ambiente
    }
  }
}
