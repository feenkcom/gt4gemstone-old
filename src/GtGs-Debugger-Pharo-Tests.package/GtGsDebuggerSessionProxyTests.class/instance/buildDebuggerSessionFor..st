as yet unclassified
buildDebuggerSessionFor: aString

	[self client performStringRemotely: aString ] 
		on: TDNotification 
		do: [ :notification | 
			[ notification defaultRuntimeError] 
				on: TDRuntimeError 
				do: [ :error |
					^ GtGsDebuggerSessionProxy 
						forClient: self client andNotification: error in: nil ] ].
	^ nil