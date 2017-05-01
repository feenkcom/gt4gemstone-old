# GsDevKit installation on Windows

For the installation in Mac Os or windows follow the instructions from the [GsDevKit website](https://github.com/GsDevKit/GsDevKit_home/blob/master/docs/installation/README.md#installation-overview).

First you need to clone GsDevKit, switch to the dev_tode branch and update the PATH variable

    git clone https://github.com/GsDevKit/GsDevKit_home.git
    cd GsDevKit_home
    git checkout dev_tode
    export PATH=`pwd`/bin:$PATH 

Then you need to set the `GS_HOME` variable and install the GsDevKitClient. For this you need to use a path that has the format from Windows and not Linux. For example, if the GsDevKit intalation is on the `C` drive in the  folder `gt4gemstone`, then the instruction for setting the path is:  

    export GS_HOME=C:/gt4gemstone/GsDevKit_home
    
Alternatively, if you are installing GsDevKit on Windows using Git Bash you can use `pwd -W` instead of manually filling in the full absolute path:

    export GS_HOME=`pwd -W`
    
After setting the path you can install the client:

    installClient
    
Then you need to update the `tode` project to use the dev branch and clone `gt4gemstone`:

    cd $GS_HOME/shared/repos
    cd tode
    git checkout dev
    cd ..
    git clone https://github.com/feenkcom/gt4gemstone.git
    
Once all this is done you can create a new client called `Gt4Gemstone` and start it. This client targets GemStone/S 3.3.0

    createClient -t pharo Gt4Gemstone -l -v Pharo5.0 -s gs_330 -z $GS_HOME/shared/repos/gt4gemstone/.smalltalk.ston
    startClient Gt4Gemstone -s gt4gemstone

Afterwards the server side needs to be configured. For installing and connecting to a server image that does not rely on GsDevit see [gt4gemstone server instalation without GsDevKit](/doc/bareGemStoneInstallation.md).
