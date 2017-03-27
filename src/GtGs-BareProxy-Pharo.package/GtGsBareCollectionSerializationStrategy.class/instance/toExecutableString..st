converting
toExecutableString: aFormatter
	
	^ (String streamContents: [ :aStream | 
		aStream nextPutAll: ' | result | 
 result := String new.'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' ( '.
		aStream nextPutAll: aFormatter objectAccessorCommand.
		aStream nextPutAll: ' ) '.
		aStream nextPutAll: ' do: [ :aListElement | 
			result 
				addAll: ( ', (self remoteFormatCommandStringFor: aFormatter remoteFormatBlock) ,' );
				add: Character cr
			 ].'.
		aStream nextPut: Character cr.
		aStream nextPutAll: 'result' ]) contents