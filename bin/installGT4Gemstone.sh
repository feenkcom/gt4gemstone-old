#! /usr/bin/env bash

theArgs="$*"

usage() {
cat <<HELP
USAGE: $(basename $0) [-s <stone-name>] [-u <user-name>] [-p <password>] [-c <gem-temp-cache-size>] [-l <log-file>] [-f <target-file>] [-g <gemstone-version>] [-a try|commit|debug]

Load the gt4gemstone project into a gemstone extent. Provides options for debugging and committing changes.
In case an error happens during loading changes are not committed. 

OPTIONS
  -s <stone-name>
     The name of the stone where gt4gemstone will be installed
  -u <user-name>
     The username used to connect to the given stone
  -p <password>
     The password for connecting to the given stone
  -c <gem-temp-cache-size>
     The amount of memory in MB that used by topaz gemstone session (GEM_TEMPOBJ_CACHE_SIZE).
  -l <log-file>
     The name of the log file where the topaz output will be placed.
  -f <target-file>
     The topaz file that will be loaded in the stone
  -g <gemstone-version>
     The gemstone version. It will be used to select which loading script to use.
  -a try|commit|debug
     The action to be performed.
     try: only loads the project and records the errors;
     commit: loads and commits the project;
     debug: loads and prints the stack; should be used if loading triggers an error;
     DEFAULT is '-a try'.

EXAMPLES
  $(basename $0)
  $(basename $0) -s gs64stone -u SystemUser -p swordfish -a debug
  $(basename $0) -s gs64stone -u SystemUser -p swordfish -a try   -l log.txt -c 256
  $(basename $0) -g 3.3.0 -f load_gt4gemstone.topaz -a commit

HELP
}

if [ -z "$GT4GEMSTONE" ] ; then
  # error; for some reason, the path is not accessible
  echo "GT4GEMSTONE is not set"
  exit 1  # fail
fi

source ${GT4GEMSTONE}/bin/private/shFeedback.sh
start_banner

gemstone="gt4gemstone"
gemuser="SystemUser"
gempassword="swordfish"
tempObjCacheCommand=""
logFileCommand=""
targetFile="load_full.topaz"
gemstoneVersion="3.3.0"
actionType="try"
while getopts "s:u:p:c:l:f:g:a:" OPT ; do
  case "$OPT" in
    s) gemstone="${OPTARG}" ;;
    u) gemuser="${OPTARG}" ;;
    p) gempassword="${OPTARG}" ;;
    c) tempObjCacheCommand="-C GEM_TEMPOBJ_CACHE_SIZE=${OPTARG}MB";;
    l) logFileCommand=">> ${OPTARG}" ;;
    f) targetFile="${OPTARG}" ;;
    g) gemstoneVersion="${OPTARG}" ;;
    a) actionType="${OPTARG}" ;;
    *) usage; exit_1_banner "Uknown option" ;;
  esac
done

preLoadCommand="iferror exit 1"

case "${actionType}" in
  try) postLoadCommand=`cat <<EOF
errorCount
EOF` ;;
  commit) postLoadCommand=`cat <<EOF
errorCount
commit
EOF` ;;
  debug) preLoadCommand="errorCount";
postLoadCommand=`cat <<EOF
errorCount
display oops
level 2
stack
EOF` ;;
  *) usage; exit_1_banner "Uknown option" ;;
esac

echo "[INFO] Run topaz command."

topaz -il ${tempObjCacheCommand} <<EOF ${logFileCommand}
set user ${gemuser} password ${gempassword} gemstone ${gemstone}
login
${preLoadCommand}
input ${GT4GEMSTONE}/external/scripts/gs_${gemstoneVersion}/${targetFile}
${postLoadCommand}
exit
EOF

exit_0_banner