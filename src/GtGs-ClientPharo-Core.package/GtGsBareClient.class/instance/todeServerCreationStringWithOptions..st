private
todeServerCreationStringWithOptions: withOptions
	| str |
	str := '(GsSession currentSession symbolList 
		objectNamed: #''GtGsBareTopezServer'') isNil ifTrue: [ 
			"In case gt4gemstone is not installed on the server side do not trigger an error.
			The client should still work with limited functionality."
			^ nil ].
	SessionTemps current
		at: #''Gt4gemstone_Topez_Class_Name'' put: GtGsBareTopezServer name.
	GtGsBareTopezServer createFor: 1'.
	withOptions
		ifTrue: [ str := str , ' options: #(#transcript)' ].
	^ str