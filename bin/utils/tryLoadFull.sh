#! /usr/bin/env bash

theArgs="$*"


if [ -z "$GT4GEMSTONE" ] ; then
    # error; for some reason, the path is not accessible
    echo "GT4GEMSTONE is not set"
    exit 1  # fail
fi

externalResourcesDir="${GT4GEMSTONE}/external"

if [ -d "${externalResourcesDir}/scripts" ]; then
  rm -rf ${externalResourcesDir}/scripts
fi

${GT4GEMSTONE}/bin/setupEnvGemstone330Bare.sh


topaz -il <<EOF >>MFC.out
set user SystemUser password swordfish gemstone gt4gemstone
login
input /gemstone/gt4gemstone/external/scripts/gs_3.3.0/load_full.topaz
exit
EOF

