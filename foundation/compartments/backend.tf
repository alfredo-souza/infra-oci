terraform {
  cloud {
    organization = "Docway"
    workspaces {
      name = "infra-oci-compartments" # troque para -qa-, -stage-, -prod- conforme o ambiente
    }
  }
}
