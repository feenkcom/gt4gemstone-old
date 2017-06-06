private
completedSignalExistsFor: aSignal inData: currentData
	| currentStack currentRecordins |
	
	currentStack := self stackForSignal: aSignal.
	currentRecordins := (currentData at: #recordings).
	(currentData at: #index) + 1 to: currentRecordins size do: [ :currentIndex |
		|anotherSignal|
		anotherSignal := currentRecordins at: currentIndex.
		((anotherSignal isKindOf: GtGsRequestCompleteStepSignal) and: [ 
			 anotherSignal requestID = currentStack top requestID ]) 
		     ifTrue: [ ^ true ] ].
	^ false