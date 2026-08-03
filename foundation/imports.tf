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


# ==========================================
# IMPORTAÇÃO: SUBNETS, RTs e SLs (HOMOL)
# ==========================================
import { 
  to = oci_core_subnet.homol_exa_backup 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaaoc7b5obvepk5e7rjccywbwcph6ojnshbac2td54s36iczierwwka"
}
import { 
  to = oci_core_subnet.homol_exa_client 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaaiefnqs6k6cc4vzmu7djqeoop2idgrurv4zngnj3lg6gtsuriuqrq"
}
import { 
  to = oci_core_subnet.homol_pub 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaanqodafgl65b4k5ydob7sb4ev3jwpfa4m7d22u3uxhpjujpcg5dqa"
}
import { 
  to = oci_core_subnet.homol_priv 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaad3rouk5dvqf4tqwesjzuammm4r6trjrv2b5wuvlz54bt6n3cnnia"
}
import { 
  to = oci_core_route_table.homol_exa_backup 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaajgek7jq6yz2fpotrhlc4zt5lfeb2ttywk2e6wiyqztfi3jvm2zga"
}
import { 
  to = oci_core_route_table.homol_exa_client 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaamgphti4jqckl3qnwefetfaxfnyp7bd5v24eqznneyo5zqso3utba"
}
import { 
  to = oci_core_route_table.homol_pub 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaathrsj5b3hsq6yizszawesd7ls3wjoqdsteueavk7sq5ruwzf2ova"
}
import { 
  to = oci_core_route_table.homol_priv 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaaivqj3xr4cnbyy5av4zk26nhu37ed74sufzuana7qjo5ut4leetqq"
}
import { 
  to = oci_core_route_table.homol_default 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaatrczkwvqmmerm437qikx54hvdrfokx7eztyyu37ngm2r235zubga"
}
import { 
  to = oci_core_security_list.homol_priv 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaaamu7elmofev262l5hqn2h2b74m2lwmojqbwex3wbzbfzxruxtlia"
}
import { 
  to = oci_core_security_list.homol_pub 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaaws6eoafitqzafcsrlnkpto537lpyfrcn66xoeuykq4a7ebpr5h5a"
}
import { 
  to = oci_core_security_list.homol_exa_client 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaamkjay6uiqayaka2csig4pcogbejstfeixejrtf76uoo76bjmv4ca"
}
import { 
  to = oci_core_security_list.homol_exa_backup 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaau4nj6aafpx7nrfwrgf3hifyvglctyvnuhv2zfhwpt4dthhvwnw7a"
}
import { 
  to = oci_core_security_list.homol_default 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaafgjidcp4ubjy6nlpzs2lpxghz2lzyitu4fnd2hajf2riujjd2atq"
}

# ==========================================
# IMPORTAÇÃO: SUBNETS, RTs e SLs (PROD)
# ==========================================
import { 
  to = oci_core_subnet.prod_exa_client 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaaufn4z2v74eq5ryyw2fzuyyyl27fgljglbakudcav4xwjbq2htzjq"
}
import { 
  to = oci_core_subnet.prod_exa_backup 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaaoib4pzrvtxmzuwsjj7zfcp3kge6nbguyn5tnyzr4pgfhjnkmg5vq"
}
import { 
  to = oci_core_subnet.prod_pub 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaahgppwybesnxi7yuoswu2w4wsn2mjbyygc7yzbwcoeiykz3gafddq"
}
import { 
  to = oci_core_subnet.prod_priv 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaapfibvvcld3zuodt5cvnzuczvb6iubchv4xi77tvfnuhkxrz4tw5q"
}
import { 
  to = oci_core_route_table.prod_exa_backup 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaai7cf2fkkmaz37p2k4lz4poxmhvawvdroanmgbanfx57ouvnbh65a"
}
import { 
  to = oci_core_route_table.prod_exa_client 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaazhpx6tdeomwe5pwns7w6qzm4p7nsw47xpvzopzspctg53vlbnaza"
}
import { 
  to = oci_core_route_table.prod_pub 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaabjixpeebcx664avpazyt3zjxu43zzqn2n6ngt33w227iceoja3wq"
}
import { 
  to = oci_core_route_table.prod_priv 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaamjsaldjhwybisskgeo5rih3ztcukdnjwagbr23pns4vzximqt62q"
}
import { 
  to = oci_core_route_table.prod_default 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaa2lsisrcnc3jsy7iomondh5ay7tyequ7a4qfchvxdz2jxazyng32a"
}
import { 
  to = oci_core_security_list.prod_exa_backup 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaaj4vcnauhbiwihweqkn5a3yxbgnmwvrwtionu3bocpivuulf3weta"
}
import { 
  to = oci_core_security_list.prod_exa_client 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaarrszqmfqa2ueu25pkn6cky67tt76m5x454rcicc6wqs3xrh37caq"
}
import { 
  to = oci_core_security_list.prod_pub 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaahoikfasyvb4l5txqdob3qkkyt6k6oumsrk6cjq57cfgj6ytwfv2a"
}
import { 
  to = oci_core_security_list.prod_priv 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaag7n65it2x7o6icp6snvti43mtmmbiht3vlu66xx5d5or75or5m6a"
}
import { 
  to = oci_core_security_list.prod_default 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaa2njc52qcrl5vl22szwzcz3m5obrbgpcmf3rktsudljif4tdsqscq"
}

# ==========================================
# IMPORTAÇÃO: SUBNETS, RTs e SLs (SHARED)
# ==========================================
import { 
  to = oci_core_subnet.shared_pub 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaatowvxsn3qfmmxbxelni26rsyroaprvmwh5qsloqna2ihoiinwj5a"
}
import { 
  to = oci_core_subnet.shared_priv 
  id = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaas3xhussmszto3iqbisenrfn6sdo5tfqt7sxhngjf2ddalof7ki2q"
}
import { 
  to = oci_core_route_table.shared_pub 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaadthn7bvzzlvdt3d35li7pm4qji66jyhjudyypajxcy7c4zzo7dbq"
}
import { 
  to = oci_core_route_table.shared_priv 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaaoyzhg5vsj2eosbtkvey7sm5jczn7qx2hy5h4o3fkxokv5grt3f7a"
}
import { 
  to = oci_core_route_table.shared_default 
  id = "ocid1.routetable.oc1.sa-vinhedo-1.aaaaaaaapgh42mkacklpwdxc464v2mtgfsclsqw6p3p2vwfyrl3xjcerppoa"
}
import { 
  to = oci_core_security_list.shared_pub 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaajga7pfukvxmify5qlzvl3xtsnfimiqy4b52gah5cvvp56awp7nua"
}
import { 
  to = oci_core_security_list.shared_priv 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaajaurnq4q7sjiyfb5hoi7fxfwy6ip3chmyo5qye663qpolrcmfysa"
}
import { 
  to = oci_core_security_list.shared_default 
  id = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaakli5li56zdyunb37ny7mu3fv7h7mbcg6lcv6b5vncsianowzig5q"
}

# ==========================================
# IMPORTAÇÃO: STORAGE (BUCKETS)
# ==========================================
import {
  to = oci_objectstorage_bucket.rhel_image
  id = "n/axybenm6d4ev/b/rhel-image"
}