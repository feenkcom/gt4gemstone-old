*GtGs-ClientPharo-Core
send: selector withArgs: args
	^ self send: selector to: self todeServerOopType withArgs: args