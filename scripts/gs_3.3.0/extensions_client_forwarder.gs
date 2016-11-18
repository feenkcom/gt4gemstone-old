category: 'Printing'
method: ClientForwarder
printOn: aStream
aStream nextPutAll: 'A ClientForwarder'
%

method:
printOn: aStream recursionSet: anIdentitySet
self printOn: aStream

%

method:
printString
"Returns a CharacterCollection whose contents are a displayable representation of the
receiver."

"This method uses the printOn: method to create the String."

| ws str |
str := String new.
ws := PrintStream printingOn: str.
self printOn: ws.	"contents might have been converted to another subclass of CharacterCollection."
^ ws _collection

%

method:
describe
"Returns an instance of a subclass of CharacterCollection describing the
receiver.  This method is required by Topaz and by GemStone internal error
handling.  Any reimplementation must conform to the following rules:

* This method must not return nil.

* This method must return an instance of a subclass of CharacterCollection."

^ [ self printString ]
onException: Error
do: [ :ex | '<error during Object>>describe>' ]

%

method:
class
^ ClientForwarder

%

category: 'Forwarding'
method: ClientForwarder
perform: aSelectorSymbol withArguments: anArray
"A special case for the forwarder - avoid having to unwrap things on the client"

^ ClientForwarderSend new
receiver: self
clientObj: clientObject
selector: aSelectorSymbol
args: anArray;
defaultAction	"return error direct to GCI"

%

method:
perform: aSelectorSymbol with: firstObject with: secondObject with: thirdObject
"A special case for the forwarder - avoid having to unwrap things on the client"

^ self
perform: aSelectorSymbol
withArguments:
{firstObject.
    secondObject.
    thirdObject}

%

method:
perform: aSelectorSymbol with: firstObject with: secondObject
"A special case for the forwarder - avoid having to unwrap things on the client"

^ self
perform: aSelectorSymbol
withArguments:
{firstObject.
    secondObject}

%

method:
perform: aSelectorSymbol with: anObject
^ ClientForwarderSend new
receiver: self
clientObj: clientObject
selector: aSelectorSymbol
args: {anObject};
defaultAction	"return error direct to GCI"

%

method:
perform: aSelectorSymbol
"A special case for the forwarder - avoid having to unwrap things on the client"

^ self perform: aSelectorSymbol withArguments: #()