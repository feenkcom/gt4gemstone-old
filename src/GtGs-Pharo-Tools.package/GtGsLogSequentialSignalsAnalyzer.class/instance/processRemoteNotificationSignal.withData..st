callbacks
processRemoteNotificationSignal: aSignal withData: currentData
	| currentStack |
	
	aSignal canTerminateRequest ifFalse: [ 
		^ self processBasicSignal: aSignal withData: currentData ].
	
	currentStack := self stackForSignal: aSignal.
	(self completedSignalExistsFor: aSignal inData: currentData) ifTrue: [ 
		"If a completed signal exists we treat the current notification just as another event,
		as it did not terminate the request. "
		^ self processBasicSignal: aSignal withData: currentData	].
	
	"Terminate all current opened requests."
	[ currentStack size > 1 ] whileTrue: [
		self processRequestCompletedSignal: aSignal withData: currentData ]