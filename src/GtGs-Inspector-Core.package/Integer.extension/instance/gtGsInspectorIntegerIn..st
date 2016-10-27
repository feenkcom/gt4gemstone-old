*GtGs-Inspector-Core
gtGsInspectorIntegerIn: composite

	^ composite table
		title: 'Integer';
		display: [ | associations |
			associations :=	{
					'decimal' -> self printString.
					'hex' -> self printStringHex.
					'octal' -> (self printStringBase: 8).
					'binary' -> (self printStringBase: 2)} asOrderedCollection.
			(self between: 0 and: 16r10FFFF)
				ifTrue: [ associations add: 'character' -> self asCharacter ].
			associations ];
		column: 'Key' evaluated: [ :anAssociation | anAssociation key];
		column: 'Value' evaluated: [ :anAssociation | anAssociation value ];
		send: [ :anAssociation | anAssociation value ]