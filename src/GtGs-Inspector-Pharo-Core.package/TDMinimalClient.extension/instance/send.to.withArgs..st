*GtGs-Inspector-Pharo-Core
send: selector to: receiver withArgs: args
	| response startTime |
	#GtGsSessionIntiateRequestSignal asClassIfPresent: [ :signal | signal
		emitForRequest:  selector
		fromClient: self
		to: receiver
		withArgs: args ].
	startTime := DateAndTime now.
	
	response := self session send: selector to: receiver withArgs: args.
	
	#GtGsSessionResponseSuccessSignal asClassIfPresent: [ :signal | signal
		emitForRequest:  selector
		fromClient: self
		to: receiver
		withArgs: args
		withResponse: response
		startedAt: startTime ].
	
	^ response 