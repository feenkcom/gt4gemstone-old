private - execution
remoteFormatCommandString

	^ self remoteFormatBlock 
		ifNil: [ ' aListElement ' ] 
		ifNotNil: [ :aFormatBlock | 
			aFormatBlock sourceNode formattedCode ,' value: aListElement' ]