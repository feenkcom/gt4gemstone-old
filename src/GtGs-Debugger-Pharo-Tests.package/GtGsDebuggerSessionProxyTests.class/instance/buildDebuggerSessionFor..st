as yet unclassified
buildDebuggerSessionFor: aString

	[self client performStringRemotely: aString ] 
		on: TDErrorNotification 
		do: [ :notification | 
			^ GtGsDebuggerSessionProxy 
				forClient: self client 
				andNotification: (TDRuntimeError 
					gciSession: notification gciSession 
					gci32xErrSType: notification gci32xErrSType) 
				in: nil ] .
	^ nil