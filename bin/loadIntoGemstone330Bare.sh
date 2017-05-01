#! /usr/bin/env bash

theArgs="$*"

if [ -z "$GT4GEMSTONE" ] ; then
# error; for some reason, the path is not accessible
echo "GT4GEMSTONE is not set"
exit 1  # fail
fi

source ${GT4GEMSTONE}/bin/private/shFeedback.sh
start_banner

${GT4GEMSTONE}/bin/utils/gs_3.3.0/commitFull.sh "$@"

exit_0_banner
