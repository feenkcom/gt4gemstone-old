*GtGs-BareProxy-Pharo
gtGsBareAsBlockStringArgument

	^ (String streamContents: [ :aStream | 
		aStream nextPutAll: ' { '.
		self do: [ :anArgument | 
			aStream nextPutAll: anArgument gtGsBareAsBlockStringArgument.
			aStream nextPutAll: ' . ' ].
		aStream nextPutAll: ' } ' ]) contents