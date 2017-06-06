private
remoteReturnValue
	^ self gemstoneClient
		send: #obtainRemoteReturnValue 
		to: self gemstoneDebuggerSessionOopType