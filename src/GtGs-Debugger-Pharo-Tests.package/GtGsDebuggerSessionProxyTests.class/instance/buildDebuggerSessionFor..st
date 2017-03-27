as yet unclassified
buildDebuggerSessionFor: aString

	[self client evaluateStringRemotely: aString ] 
		on: TDErrorNotification 
		do: [ :notification | 
			^ GtGsDebuggerSessionProxy 
				forClient: self client 
				andNotification:  (TDRuntimeError 
					gciSession: notification gciSession 
					gci32xErrSType: notification gci32xErrSType)
				in: nil ] .
	^ nil