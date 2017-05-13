callbacks
processRequestCompletedSignal: aSignal withData: currentData
	| currentStack newEvent |
	currentStack := self stackForSignal: aSignal.
	
	newEvent := currentStack pop.
	aSignal isRemoteNotificationSignal ifFalse: [
		"Remote notifications can terminate a request."
		self assert: newEvent startSignal requestID = aSignal requestID.].
	newEvent endSignal: aSignal.
	self addEvent: newEvent 