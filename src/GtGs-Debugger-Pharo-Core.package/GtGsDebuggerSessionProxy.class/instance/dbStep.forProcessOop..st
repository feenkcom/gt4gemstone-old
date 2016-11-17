callbacks
dbStep: level forProcessOop: processOop

	[ ^ self gemstoneClient
		handleDebugExceptionsDuring: [ self gemstoneClient session stepOver: (GsGciOopType fromInteger: processOop) level: level ] ]
			on: GsGciClientForwarderSend
			do: [ :ex | 
				| result |
				result := ex performSendNoForwarder: [  ].
				^ ex resume: (Array with: #resume with: result) ] 