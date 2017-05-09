# Code examples

This document provides some example of how you can programatically use a gemstone client to perform perform various actions like inspecting objects and executing code. 

```
"---INSPECTOR---"
gemstoneClient performStringRemotelyAndInspect: 'Object'.
gemstoneClient performStringRemotelyAndInspect: 'Dictionary new add: (1->2); yourself'.
gemstoneClient performStringRemotelyAndInspect: 'System stoneName asString.'.

gemstoneClient performStringRemotely: '
| size collection |
size := 1000000.
collection := IdentityDictionary new: size.
1 to:  size do: [ :index |
    collection at: index put: index ].
SessionTemps current at: #LARGE_COLLECTION put: collection'.
gtClient performStringRemotelyAndInspect: '(SessionTemps current at: #LARGE_COLLECTION) '.

"---PLAYGROUND---"
gemstoneClient openGemstonePlayground. 
gemstoneClient openGemstonePlaygroundWithContents: 'ABAddressBook 
        reset; 
        loadDefaultData.
ABAddressBook default.'.

"---DEBUGGER---"
gemstoneClient openGemstonePlaygroundWithContents: 'self halt. GtGsDebuggingPlaygroundTests new methodWithPrintStringInBlock'.
gemstoneClient performStringRemotely: '1/0'.
gemstoneClient performStringRemotely: '
    ABAddressBook loadDefaultData.
    self halt.
    ABAddressBook reset'.

gemstoneClient logout
```
