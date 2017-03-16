*GtGs-BareProxy-Pharo
gtGsAsStringArgumentsArrayOn: aStream

	aStream nextPutAll: ' { '.
	self do: [ :anArgument | 
		aStream nextPutAll: ' ('.
		aStream nextPutAll: anArgument gtGsAsBlockStringArgument.
		aStream nextPutAll: ' ) . ' ].
	aStream nextPutAll: ' } '