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

# ==========================================
# IMPORTAÇÃO: SUBNETS, RTs e SLs (DESENV)
# ==========================================
import { 
  to = oci_core_subnet.desenv_pub 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaa6ljnoj2b4yandbxyhzgyyfa2xi6qtfndkkt2tfyhaudtruckf3aa"
}
import { 
  to = oci_core_subnet.desenv_priv 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaazmj5ry6je5ru55nauxrypmzq5cydjannymm775pxjsvfzuvnmxla"
}
import { 
  to = oci_core_route_table.desenv_pub 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaauobx36rbusgkftzguarb6myolowo5rxzoxzdbhvy4r3wrgcqcgra"
}
import { 
  to = oci_core_route_table.desenv_priv 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaaj3fzbiev4mbhv6iye3u3cdcg5ryuo57wljonrvmgoxtmm5e3ivna"
}
import { 
  to = oci_core_route_table.desenv_default 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaaxcby6v7hnpy6eqq77cpeml773l2bg26agei353i6z735dg4r5mia"
}
import { 
  to = oci_core_security_list.desenv_priv 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaa5i6iqqsa4z2o6u4hxhuu5larafburhmos6xgbtyl3r6aw3faks2q"
}
import { 
  to = oci_core_security_list.desenv_pub 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaab4zl2b7kg3jjdjhtcmiy5iwvrh7cevswlserbueewd3ytgvienwa"
}
import { 
  to = oci_core_security_list.desenv_default 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaa2dkhukwx3qowhxqwwl24txr5pmmwjaaikm5j4gkzes3hddwfipqa"
}
