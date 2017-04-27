private
findRegex: aRegex in: aTargetString
	| strm match range |
	
	strm := (aTargetString copyFrom: 1 to: aTargetString size) readStream.
	aRegex searchStream: strm.
	match := aRegex subexpression: 1.
	match ifNotNil: [range := (aRegex position + 1 - match size) to: (aRegex position + 1 - 1)].
	^ range