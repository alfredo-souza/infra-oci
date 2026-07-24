# --- PARENTS (Direto na Tenancy) ---
import { 
  to = oci_identity_compartment.dr_foundation_infra 
  id = "ocid1.compartment.oc1..aaaaaaaaqlfp22so33giqhkv6sjcmv75lpfppmf5utoqtrluo6q3tkmgsvaa"
}
import { 
  to = oci_identity_compartment.dr_workload 
  id = "ocid1.compartment.oc1..aaaaaaaaf45ies5dykfwi75mxnqrnen2bkva3b6zglhbaswjbtlpcypxpeca"
}

# --- FILHOS DE dr_foundation_infra ---
import { 
  to = oci_identity_compartment.dr_network 
  id = "ocid1.compartment.oc1..aaaaaaaavizr5a74bwk3znwoi4yhmpozwky3nbqqgyuq3m4ws5wmogjeobla"
}
import { 
  to = oci_identity_compartment.dr_security 
  id = "ocid1.compartment.oc1..aaaaaaaamzqaxgclryqcpqazxzt4h5xdbm7ip2m47d3goy6ywjrhkvbftuxq"
}
import { 
  to = oci_identity_compartment.dr_shared 
  id = "ocid1.compartment.oc1..aaaaaaaanybeii6ghaebfsjgethmtzjju2okjlfse2fzkhsjwkwicuri55jq"
}

# --- FILHOS DE dr_workload ---
import { 
  to = oci_identity_compartment.dr_sas_exadata_prd 
  id = "ocid1.compartment.oc1..aaaaaaaaytjz4uyr6jsahlfeggqh43uw5dr6cw76oacb3r5sigmvgv4icvpa"
}
