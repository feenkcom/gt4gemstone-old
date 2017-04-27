private
findNext: aRegex startingAt: searchIdx in: aTargetString
	| strm match range |
	
	strm := (aTargetString copyFrom: searchIdx to: aTargetString size) readStream.
	aRegex searchStream: strm.
	match := aRegex subexpression: 1.
	match ifNotNil: [range := (aRegex position + searchIdx - match size) to: (aRegex position + searchIdx - 1)].
	^ range