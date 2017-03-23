accessing
selfOopType: anOopType
	selfOopType ifNotNil: [ 
		Error signal: 'Cannot change the oop type associated with a proxy object.' ].
	selfOopType := anOopType