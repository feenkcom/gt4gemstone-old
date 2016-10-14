printing
printOn: aStream

	aStream nextPutAll: self city.
	aStream nextPutAll: ', '.
	aStream nextPutAll: self country