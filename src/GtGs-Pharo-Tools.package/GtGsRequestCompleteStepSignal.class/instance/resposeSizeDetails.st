accessing
resposeSizeDetails
	^ ((self responseObject sizeInMemory / 1024) asFloat printShowingDecimalPlaces: 2), ' KB', 
	' [', self responseObject sizeInMemory asString, ' bytes', ']'