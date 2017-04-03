private
remoteFormatCommandStringFor: aBlock
	^ aBlock 
		ifNil: [ ' aListElement ' ] 
		ifNotNil: [ :aFormatBlock | 
			aFormatBlock sourceNode formattedCode ,' value: aListElement' ]