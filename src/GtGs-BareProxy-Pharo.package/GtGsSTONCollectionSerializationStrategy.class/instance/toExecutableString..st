converting
toExecutableString: aFormatter
		
	^ (String streamContents: [ :aStream | 
		aStream nextPutAll: ' | result | 
 result := Array new.'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' ( '.
		aStream nextPutAll: aFormatter objectAccessorCommand.
		aStream nextPutAll: ' ) '.
		aStream nextPutAll: ' do: [ :aListElement | 
			result 
				add: ( ',  (self remoteFormatCommandStringFor: aFormatter remoteFormatBlock)  ,' )
			 ].'.
		aStream nextPut: Character cr.
		aStream nextPutAll: 'result' ]) contents