# gt4gemstone sever instalation without GsDevKit

gt4gemstone can also be installed in a GemStone/S 64 stone that was not created using GsDevKit. The following steps describe the inslation process  on a Linux server.

## Downloading and loading gt4gemstone
```
$ git clone https://github.com/feenkcom/gt4gemstone.git
$ cd gt4gemstone
$ export GT4GEMSTONE=`pwd`
$ ./bin/setupEnvGemstone330Bare.sh
$ ./bin/loadIntoGemstone330Bare.sh -s <stone-name>
``` 
The script `setupEnvGemstone330Bare.sh` dowloads all required dependencies, sets the environmental variable and configures the installation scripts. The script `loadIntoGemstone330Bare.sh` loads the project into a given running stone. This scripr provides several options to control the loading:
```
$ ./bin/loadIntoGemstone330Bare.sh -s gt4gemstone -u DataCurator -p swordfish
$ ./bin/loadIntoGemstone330Bare.sh -s gt4gemstone -u DataCurator -p swordfish -a try
$ ./bin/loadIntoGemstone330Bare.sh -s gt4gemstone -u DataCurator -p swordfish -a debug -l log.txt -c 256
$ ./bin/loadIntoGemstone330Bare.sh -s gt4gemstone -u DataCurator -p swordfish -a commit
```
The `-a` option has three parameters: `try`, `commit` and `degug`. `try` only loads the code and does not make a commit; `debug` outputs a stack in case an error occurs; `commit` will commit the session if no errors occured during loading. `-l` indicates a log file, while `-c` the ammount of memory that will be used by the topaz session. For a complete list of all options look at the file `./bin/installGT4Gemstone.sh`.

## Loading the code within a stone using topaz.

Instead of using `loadIntoGemstone330Bare.sh` the gt4gemstone can be loaded into a stone using only topaz. Topaz can be started using the `topaz` command present in the `bin` folder of a GemStone/S 64 installation (`$GEMSTONE`). The topaz `login` command will then promt for a password.
```
$ $GEMSTONE/bin/topaz
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

## Updating the client image

First the gt4gemstone project should be updated from git. If the project was downloaded using GsDevKit it can be updated using:
```
$ cd $GS_HOME/shared/repos/gt4gemstone
$ git pull
```

Second the project gt4gemstone should be updated/loaded in the Pharo image on the client. If the client is named `Gt4Gemstone` then the Pharo image can be found at `$GS_HOME/dev/clients/Gt4Gemstone/Gt4Gemstone.image`. The image can then be updated using the following script that uses `gitfiletree`:

```
Metacello new
   baseline: 'Gt4Gemstone';
   repository: 'gitfiletree://<PATH_TO_GT4GEMSTONE_REPO>/src';
   onLock: [ :ex | ex honor ];
   onWarning: [ :ex | ex resume ];
   load.
```

In the above script `<PATH_TO_GT4GEMSTONE_REPO>` should be replaced with the absolute path to the folder containing the project gt4gemstone (for example `/gemstone/gt4mestone/`).
Also  the above script requires GitFileTree. If not present in the image GitFileTree can be loaded from the Catalog Browser: World Menu -> Tools -> Catalog Browser. (search for 'gitfiletree', right click on GitFileTree and select 'Install stable version').

If you do not wish to load gitfiletree, or using it causes an error, the following script relying only on `filetree` can be used instead:
```
Metacello new
   baseline: 'Gt4Gemstone';
   repository: 'filetree://<PATH_TO_GT4GEMSTONE_REPO>/src';
   onLock: [ :ex | ex honor ];
   onWarning: [ :ex | ex resume ];
   onConflict: [ :ex :loaded :incoming | ex useLoaded ];
   load.
```

## Connecting to this server

Afterwards a connection to a stone that does not use GsDevKit can be created using the class `GtGsBareClient`.
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

gtClient performStringRemotely: '
| size collection |
size := 1000000.
collection := IdentityDictionary new: size.
1 to:  size do: [ :index |
    collection at: index put: index ].
SessionTemps current at: #LARGE_COLLECTION put: collection'.
gtClient performStringRemotelyAndInspect: '(SessionTemps current at: #LARGE_COLLECTION) '.

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
