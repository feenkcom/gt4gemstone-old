accessing
elementsFor: aFormatter
	| result |
	
	result := aFormatter gemstoneClient 
		send: #evaluateSTONSmalltalk:
		to: aFormatter gemstoneClient todeServerOopType 
		withArgs: { self toExecutableString: aFormatter }.
	^ aFormatter locallyFormatElements: (self fromString: result for: aFormatter)