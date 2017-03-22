private
sessionDescriptionCreationHelpText
	^ 'Configure the session description. Enter a valid STON expression that will be evaluated to create the 
description. Fields marked with <TODO> need to be replace with a value. An example is given below.
	
TDSessionDescription { 
        #name: ''Gt4Gemstone33_VirtualBox'',
        #stoneHost: ''192.168.1.40'',
        #stoneName: ''gt4gemstone'',
        #gemHost: ''192.168.1.40'',
        #netLDI: ''netldi64_330'',
        #netLDIPort: ''10530'',
        #gemTask: ''gemnetobject'',
        #userId: ''SystemUser'',
        #password: ''swordfish'',
        #gemstoneVersion: ''3.3.3''
}'.

"TDSessionDescription new 
        name: ''Gt4Gemstone33_VirtualBox'';
        stoneHost: ''192.168.1.40'';
        stoneName: ''gt4gemstone'';
        gemHost: ''192.168.1.40'';
        netLDI: ''netldi64_330'';
        netLDIPort: ''10530'';
        gemTask: ''gemnetobject'';
        userId: ''SystemUser'';
        password: ''swordfish'';
        gemstoneVersion: ''3.3.3''"