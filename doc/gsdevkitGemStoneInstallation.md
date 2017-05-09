# gt4gemstone sever instalation with GsDevKit

These cover the case where you want to install gt4gemstone in an already existing stone. These instructions assume that the stone was created using [GsDevKit](https://github.com/GsDevKit/GsDevKit_home#installation) and that [tODE](https://github.com/dalehenrich/tode) is installed in the stone. Also you will need an existing client that can communicate with the stone. This can be either a tODE client or another gt4gemstone client.

## Installing gt4gemstone

The simplest way to load gt4gemstone is using the following tODE command:

    project load --install --stone --url=https://raw.githubusercontent.com/feenkcom/gt4gemstone/master/Gt4Gemstone.ston Gt4Gemstone

In case you already cloned gt4gemstone in `$GS_HOME/shared/repos` you will get the following warning:  `A git repo is already present at '$GS_HOME/shared/repos/gt4gemstone'`. If no erros occur during the installation that you can safetely ignore the warning.
 
The above command produces the same results as the commands bellow. In case you already cloned gt4gemstone in `$GS_HOME/shared/repos` then the install command is not needed.

    project entry --url=https://raw.githubusercontent.com/feenkcom/gt4gemstone/master/Gt4Gemstone.ston  /sys/stone/projects
    project install --stone Gt4Gemstone
    project load Gt4Gemstone
   
In case you are already have a `Gt4Gemstone.ston` file at `/sys/local/server/projects` you can use it:
 
   project load --install --local Gt4Gemstone
   
The above commands represent tODE commands that can be executed in a tODE shell from a tODE client image connected with the stone. A different way of executing these commands is from another gt4gemstone client image.  In that case you need to create a `TDMinimalClient` connect it with the stone and run the corresponsing tODE command through the client. A `TDMinimalClient` is needed as gt4gemstone is not present in the remote stone. For example, the first command for loading gt4gemstone can be executed as follows. `<...>` should be replaced with the name of the corresponding session description. `SCIGemStoneServerConfigSpec defaultSessionName` can be used if that session description is the default one.

    todeClient := TDMinimalClient loginWith: (GsDevKit_home sessionDescriptionNamed: <...>).
    todeClient registerDefaultServices.
    todeClient evaluateCommandStream: ' project entry --url=https://raw.githubusercontent.com/feenkcom/gt4gemstone/master/Gt4Gemstone.ston  /sys/stone/projects' readStream .
    "The install command should not be run if the project is already cloned in $GS_HOME/shared/repos"
    todeClient evaluateCommandStream: 'project install --stone Gt4Gemstone.
    todeClient evaluateCommandStream: 'project load Gt4Gemstone' readStream.
    todeClient evaluateCommandStream: 'commit' readStream. 
    todeClient logout.

## Updating gt4gemstone

Like its installation, updating gt4gemstone can be done using tODE commands run in the tODE shell or through a client.

The command to update the project in tODE shell is:

     project load Gt4Gemstone
     
The following code can be used within a playground in an image that already has gt4gemstone installed. `SCIGemStoneServerConfigSpec defaultSessionName` can be replaced with the name of the session description, if it is not the default one.

gemstoneClient := GtGsSessionsLifecycleHandler defaultClientType asClass forSessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName.
gemstoneClient evaluateCommandStream: 'project load Gt4Gemstone' readStream .
gemstoneClient evaluateCommandStream: 'commit' readStream.
"Logout is optional if you do not want to use this client any more"
gemstoneClient logout.

Instead of creating a client manually you can create a client using the 'Gemstone Session Handler' tool (select 'Gt4Gemstone -> Open Session handler' from the world menu). Then you can open a 'Local Playground' where the variable `gemstoneClient` is bound to the selected client.

