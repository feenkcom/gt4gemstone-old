pharo - debuggins actions
doForClientContextAction: anAction withArguments: anArray
	| processResult currentClientSession |

	processResult := self basicResumeGemstoneProcess.
	processResult first = #closeAndReturn ifFalse: [ ^ self handleResponseActions: processResult ].
	
	"If the GemStone process resumed successfuly continue the action on the Pharo process."
	self clientSession perform: anAction withArguments: anArray.
	currentClientSession := self clientSession.
	
	"Since the debugger action will close the debugger open a new one. 
	Remove the session so its state is not changed when the current debugger is closed.
	Remove the link between the gemstone and pharo session, as the gemstone session will not be reused."
	self removeClientSession.
	self debugger removeSessionSilently.
	
	self debugger browser close.
	self spawnDebugger: (GTGenericStackDebugger on: currentClientSession).
	
