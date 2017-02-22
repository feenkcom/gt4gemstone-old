printing
formatString:  aString for: aGemstoneClient

	^ Text 
		string: aString
		attributes: (aGemstoneClient session 
			ifNil: [ {TextColor color: Color gray} ]
			ifNotNil: [ {TextColor color: Smalltalk ui theme textColor } ] )