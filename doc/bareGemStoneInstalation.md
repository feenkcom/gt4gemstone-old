# gt4gemston sever instalation without GsDevKit

gt4gemstone can also be installed in a GemStone/S 64 stone that was not created using GsDevKit. The following steps describe the inslation process  on a Linux server.

1. Downloading the gt4gemstone and its dependencies
```
$ git clone https://github.com/feenkcom/gt4gemstone.git
$ ./gt4gemstone/setupEnvGemstone330Bare.sh
``` 
The script `setupEnvGemstone330Bare.sh` dowloads all required dependencies and sets the environmental variable `$GT4GEMSTONE` to point to the folder `gt4gemstone`. This variable needs to be accessible from within the running stone. 

2. Load the code within the stone.

The code should be loaded using Topaz. Topaz can be started using the `topaz` command present in the `bin` folder of a GemStone/S 64 instalation. The `login` command will promt for a password.
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

Check now that topaz can access $GT4GEMSTONE.
```
topaz 1> run
System performOnServer: 'echo ${GT4GEMSTONE}'
%
```

Next run the instalation script, verify if there are errors and commit the session.
```
topaz 1> input $GT4GEMSTONE/scripts/gs_3.3.0/load_full.topaz
topaz 1> errorCount
topaz 1> commit
```
If there are no errors the `errorCount` command will return `0`.
