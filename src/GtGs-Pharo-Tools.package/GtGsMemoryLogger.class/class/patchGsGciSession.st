as yet unclassified
patchGsGciSession

	GsGciSession 
		compile:  'executeString: aString
	| response anUUID |
	
	#GtGsSessionInitiateExecuteStringSignal asClassIfPresent: [ :signal | 
		anUUID := UUID new.
		signal 
			emitForString: aString  
			fromClient: self clientObj
			andRequestId: anUUID ].
	response := (self gciExecuteString: aString) asLocalObjectFor: self ifNotConverted: [ :aGsOopType |  aGsOopType ].
	
	#GtGsSessionCompleteExecuteStringSignal asClassIfPresent: [ :signal |
		signal
			emitForClient: self clientObj
			withResponse: response 
			andRequestId: anUUID  ].
	
	^ response'
		classified: 'api'.
		
	GsGciSession 
		compile:  'send: selector to: receiver withArgs: args
	| receiverOopType arrayOfGsOopTypes result response anUUID |
	
	#GtGsSessionInitiateMessageSendSignal asClassIfPresent: [ :signal | 
		anUUID := UUID new.
		signal
			emitForRequest:  selector
			fromClient: self clientObj
			toOopType: receiver
			withArgs: args
			andRequestId: anUUID ].
	
	receiverOopType := receiver localObjectToGciOopType: self.
	arrayOfGsOopTypes := args collect: [ :each | each localObjectToGciOopType: self ].
	result := self
		gciPerform: receiverOopType
		selector: selector
		args: arrayOfGsOopTypes
		flags: 0
		environmentId: 0.
	
	response := result asLocalObjectFor: self ifNotConverted: [:resultGciOopType | resultGciOopType].
	
	#GtGsSessionCompleteMessageSendSignal asClassIfPresent: [ :signal | signal
		emitForClient: self clientObj
		withResponse: response
		andRequestId: anUUID ].
	
	^ response '
		classified: 'api'
	