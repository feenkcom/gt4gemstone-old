*GtGs-BareProxy-Pharo
gtGsAsBlockStringArgument

	^ (String streamContents: [ :aStream | 
		aStream nextPutAll: ' { '.
		self do: [ :anArgument | 
			aStream nextPutAll: anArgument gtGsAsBlockStringArgument.
			aStream nextPutAll: ' . ' ].
		aStream nextPutAll: ' } ' ]) contents