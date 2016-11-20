# gt4gemston sever instalation without GsDevKit

gt4gemstone can also be installed in a GemStone/S 64 stone that was not created using GsDevKit. The following steps describe the inslation process  on a Linux server.

## Downloading the gt4gemstone and its dependencies
```
$ git clone https://github.com/feenkcom/gt4gemstone.git
$ cd gt4gemstone
$ export GT4GEMSTONE=`pwd`
$ ./bin/setupEnvGemstone330Bare.sh
``` 
The script `setupEnvGemstone330Bare.sh` dowloads all required dependencies and sets the environmental variable and configures the installation scripts.

## Load the code within the stone.

First the stone should be started. Then the code should be loaded using Topaz. Topaz can be started using the `topaz` command present in the `bin` folder of a GemStone/S 64 installation. The `login` command will promt for a password.
```
topaz> set gemstone <stone_name>
topaz> set username <user_name>
topaz> login
```

On a server where the the stone is named `gt4gemstone` and the user is SystemUser these commands would be:
```
topaz> set gemstone gt4gemstone
topaz> set username SystemUser
topaz> login
```

Next run the installation script, verify if there are errors and commit the session.
```
topaz 1> input <PATH_TO_GT4GEMSTONE>/external/scripts/gs_3.3.0/load_full.topaz
topaz 1> errorCount
topaz 1> commit
```
If there are no errors the `errorCount` command will return `0`.

## Connecting to this server

First a client should be created using GsDevKit. To connect to a stone that does not use GsDevKit one needs to use the class `GtGsBareClient`.
```
session := TDSessionDescription new 
	name: 'Gt4Gemstone33_VirtualBox';
	stoneHost: '192.168.1.40';
	stoneName: 'gt4gemstone';
	gemHost: '192.168.1.40';
	netLDI: 'netldi64_330';
	netLDIPort: '10530';
	gemTask: 'gemnetobject';
	userId: 'SystemUser';
	password: 'swordfish';
	gemstoneVersion: '3.3.0'.
gtClient := GtGsBareClient loginWith: session.

"---INSPECTOR---"
gtClient performStringRemotelyAndInspect: 'Object'.
gtClient performStringRemotelyAndInspect: 'Dictionary new add: (1->2); yourself'.
gtClient performStringRemotelyAndInspect: 'System stoneName asString.'.

"---PLAYGROUND---"
gtClient openGemstonePlayground. 
gtClient openGemstonePlaygroundWithContents: 'ABAddressBook 
        reset; 
        loadDefaultData.
ABAddressBook default.'.

"---DEBUGGER---"
gtClient openGemstonePlaygroundWithContents: 'self halt. GtGsDebuggingPlaygroundTests new methodWithPrintStringInBlock'.
gtClient performStringRemotely: '1/0'.
gtClient performStringRemotely: '
    ABAddressBook loadDefaultData.
    self halt.
    ABAddressBook reset'.

gtClient logout
```
