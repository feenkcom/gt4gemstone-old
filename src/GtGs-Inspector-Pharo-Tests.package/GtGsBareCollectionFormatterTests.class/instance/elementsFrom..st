accessing
elementsFrom: anArray
	^ anArray collect: [ :each | each asString ]