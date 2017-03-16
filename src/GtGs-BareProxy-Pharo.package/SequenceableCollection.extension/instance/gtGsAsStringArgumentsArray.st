*GtGs-BareProxy-Pharo
gtGsAsStringArgumentsArray

	String streamContents: [ :aStream | 
		aStream nextPutAll: ' { '.
		self do: [ :anArgument | 
			aStream nextPutAll: ' ('.
			aStream nextPutAll: anArgument gtGsAsBlockStringArgument.
			aStream nextPutAll: ' ) . ' ].
		aStream nextPutAll: ' } ' ]