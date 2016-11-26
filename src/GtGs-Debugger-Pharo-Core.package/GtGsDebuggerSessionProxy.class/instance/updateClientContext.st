actions
updateClientContext
	self clientSession 
		process: self clientSession interruptedProcess
		context: self clientSession interruptedProcess suspendedContext