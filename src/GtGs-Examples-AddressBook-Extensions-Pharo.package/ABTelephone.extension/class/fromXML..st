*GtGs-Examples-AddressBook-Extensions-Pharo
fromXML: aPPXmlElement
	|dict|
	dict := Dictionary newFrom: (aPPXmlElement elements collect: [ :each | each name asSymbol -> each nodes first asString]).
	^ self new
		prefix: (dict at: #prefix ifAbsent: ['000']);
		number: (dict at: #number ifAbsent: ['00000'])