private - execution
executeCommandWithSTONSerialization
	| stringCommand |
	
	stringCommand := (String streamContents: [ :aStream | 
		aStream nextPutAll: ' | result | 
 result := Array new.'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' ( '.
		aStream nextPutAll: self command.
		aStream nextPutAll: ' ) '.
		aStream nextPutAll: ' do: [ :aListElement | 
			result 
				add: ( ',  self remoteFormatCommandString  ,' )
			 ].'.
		aStream nextPut: Character cr.
		aStream nextPutAll: 'STON toString: result' ]) contents. 
	
	^ self locallyFormatElements: (STON fromString: (self gemstoneClient executeString: stringCommand))