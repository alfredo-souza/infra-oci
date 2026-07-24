# --- PARENTS (Direto na Tenancy) ---
import { 
  to = oci_identity_compartment.foundation_infra 
  id = "ocid1.compartment.oc1..aaaaaaaawwrl3ecytxx2a5segitb4dr5hosboqovte2pqs32ct44urwuayva"
}
import { 
  to = oci_identity_compartment.workload 
  id = "ocid1.compartment.oc1..aaaaaaaah4jvhdxfo5wkj2crsplif6ebgkmovn6cenacp5zdiutlp3xx2jlq"
}
import { 
  to = oci_identity_compartment.dr_foundation_infra 
  id = "ocid1.compartment.oc1..aaaaaaaaqlfp22so33giqhkv6sjcmv75lpfppmf5utoqtrluo6q3tkmgsvaa"
}
import { 
  to = oci_identity_compartment.dr_workload 
  id = "ocid1.compartment.oc1..aaaaaaaaf45ies5dykfwi75mxnqrnen2bkva3b6zglhbaswjbtlpcypxpeca"
}
import { 
  to = oci_identity_compartment.sas_database 
  id = "ocid1.compartment.oc1..aaaaaaaatr73dg7ssxzurq7o56f53hfclj55rzgvtowx6q5atpztqfne3bbq"
}

# --- FILHOS DE foundation_infra ---
import { 
  to = oci_identity_compartment.network 
  id = "ocid1.compartment.oc1..aaaaaaaa6kwhdgolutn26xl3nlkzyafawlr6odmuco5yp3bnegkb64wy3pnq"
}
import { 
  to = oci_identity_compartment.security 
  id = "ocid1.compartment.oc1..aaaaaaaaiva5ei6yopta5wpkmxkvnt54v7o7poeuegrpbm4ycyxxjxd2c6aq"
}
import { 
  to = oci_identity_compartment.shared 
  id = "ocid1.compartment.oc1..aaaaaaaa3246gdds3dghf6goxl2htp4mmvqkfopzuuaf27lhkhxik74mptcq"
}

# --- FILHOS DE workload ---
import { 
  to = oci_identity_compartment.sas_exadata_prd 
  id = "ocid1.compartment.oc1..aaaaaaaaaal3ockf3hiwjtl3jcnqoof4kil4byjj5drp2sc7gamf7by5r6ma"
}
import { 
  to = oci_identity_compartment.sas_exadata_stg 
  id = "ocid1.compartment.oc1..aaaaaaaa4cudj3zgkywjvsyre2uik2kb4ql37d3nhodkfp3wly3axhla37eq"
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