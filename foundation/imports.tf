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

# --- IMPORTAÇÃO DAS VCNs ---
import { 
  to = oci_core_vcn.desenv 
  id = "ocid1.vcn.oc1.sa-vinhedo-1.amaaaaaav23halaaxrc3qtvpgcultyci6ia4wngeiapsha362g4kiutx72vq"
}

import { 
  to = oci_core_vcn.homol 
  id = "ocid1.vcn.oc1.sa-vinhedo-1.amaaaaaav23halaaepb6pxscox4z2flq3uuzixxbfgn5x67z5nnvg3fbu5lq"
}

import { 
  to = oci_core_vcn.prod 
  id = "ocid1.vcn.oc1.sa-vinhedo-1.amaaaaaav23halaa4kpgzxzjoukpxuhcw4zwhl7x423z7eb3yhrrxebtlqta"
}

import { 
  to = oci_core_vcn.shared 
  id = "ocid1.vcn.oc1.sa-vinhedo-1.amaaaaaav23halaae5gw6in7piqmufwpnmh43iziwjttwaay3fp257hraycq"
}