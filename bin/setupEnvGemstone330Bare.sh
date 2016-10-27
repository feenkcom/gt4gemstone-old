#! /usr/bin/env bash

theArgs="$*"

if [ "${GT4GEMSTONE}x" = "x" ] ; then
  localDir="`dirname \"$0\"`"              # relative
  export GT4GEMSTONE="`( cd \"${localDir}/..\" && pwd )`"  # absolutized and normalized
  if [ -z "$GT4GEMSTONE" ] ; then
    # error; for some reason, the path is not accessible
    exit 1  # fail
  fi
fi

source ${GT4GEMSTONE}/bin/private/shFeedback.sh
start_banner
echo "[Info] GT4GEMSTONE=${GT4GEMSTONE}"

externalResourcesDir="${GT4GEMSTONE}/external"
if [ ! -d "$externalResourcesDir" ]; then
  mkdir $externalResourcesDir
fi

cypressDir="${externalResourcesDir}/CypressReferenceImplementation"
cypressRepo="https://github.com/dalehenrich/CypressReferenceImplementation.git"
echo "[Info] cypressDir=${cypressDir}"
if [ ! -d "$cypressDir" ]; then
  echo "[Info] Cloning git repo '${cypressRepo}'"
  git clone $cypressRepo  $cypressDir
else
  echo "[Info] Updating git repo '${cypressRepo}'"
  git -C $cypressDir pull
fi

stonDir="${externalResourcesDir}/ston"
stonRepo="https://github.com/GsDevKit/ston.git"
echo "[Info] stonDir=${stonDir}"
if [ ! -d "$stonDir" ]; then
  echo "[Info] Cloning git repo '${stonRepo}'"
  git clone $stonRepo  $stonDir
  git -C $stonDir checkout gs_port
else
  echo "[Info] Update git repo '${stonRepo}'"
  git -C $stonDir pull
fi


exit_0_banner


# input /home/andrei/feenk/scripts/symbolExtensions.gs
# input /home/andrei/feenk/scripts/objectExtensions.gs
# input /home/andrei/feenk/scripts/stringExtensions.gs

# input /home/andrei/feenk/scripts/bootstrapSton.topaz
# input /home/andrei/feenk/scripts/loadGt4GemStone.topaz
# STON fromString: '[1,0,-1,true,false,nil]'
# STON fromString: (STON toString: DateAndTime now).

# Object gtGsInspectorPresentationsIn: GtGsGlmCompositePresentation new inContext: nil 
# STON fromString: ((GtGsInspectorProxy forObject: Object new) asTopazSerializedString)
