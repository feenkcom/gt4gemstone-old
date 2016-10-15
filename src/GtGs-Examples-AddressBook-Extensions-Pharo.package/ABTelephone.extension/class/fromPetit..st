*GtGs-Examples-AddressBook-Extensions-Pharo
fromPetit: aPPXmlElement
	|dict|
	dict := Dictionary newFrom: (aPPXmlElement elements collect: [ :each | each name localName asSymbol -> each children first data]).
	^ self new
		prefix: (dict at: #prefix ifAbsent: ['000']);
		number: (dict at: #number ifAbsent: ['00000'])