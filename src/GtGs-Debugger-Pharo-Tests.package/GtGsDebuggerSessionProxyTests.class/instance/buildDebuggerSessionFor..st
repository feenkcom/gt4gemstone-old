as yet unclassified
buildDebuggerSessionFor: aString

	[self client performStringRemotely: aString ] 
		on: TDErrorNotification 
		do: [ :notification | 
			^ GtGsDebuggerSessionProxy 
				forClient: self client 
				andNotification: notification "(TDRuntimeError new
					gci32xErrSType: notification gci32xErrSType;
					gciSession: notification gciSession;
					yourself)" 
				in: nil ] .
	^ nil