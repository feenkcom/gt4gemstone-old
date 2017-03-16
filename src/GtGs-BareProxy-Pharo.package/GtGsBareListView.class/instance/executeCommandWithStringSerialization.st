private - execution
executeCommandWithStringSerialization
	| stringCommand |
	
	stringCommand := (String streamContents: [ :aStream | 
		aStream nextPutAll: ' | result | 
 result := String new.'.
		aStream nextPut: Character cr.
		aStream nextPutAll: ' ( '.
		aStream nextPutAll: self command.
		aStream nextPutAll: ' ) '.
		aStream nextPutAll: ' do: [ :aListElement | 
			result 
				addAll: ( ', self remoteFormatCommandString ,' );
				add: Character cr
			 ].'.
		aStream nextPut: Character cr.
		aStream nextPutAll: 'result' ]) contents.
	
	^ self locallyFormatElements: (self gemstoneClient session executeString: stringCommand) lines 