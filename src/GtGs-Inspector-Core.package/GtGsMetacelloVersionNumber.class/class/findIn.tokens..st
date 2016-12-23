adapted
findIn: aString tokens: delimiters
	"Answer the collection of tokens that result from parsing self.  Return strings between the delimiters.  Any character in the Collection delimiters marks a border.  Several delimiters in a row are considered as just one separation.  Also, allow delimiters to be a single character."

	| tokens keyStart keyStop separators |

	tokens := OrderedCollection new.
	separators := delimiters isCharacter 
		ifTrue: [Array with: delimiters]
		ifFalse: [delimiters].
	keyStop := 1.
	[keyStop <= aString size] whileTrue:
		[keyStart := self skipIn: aString Delimiters: separators startingAt: keyStop.
		keyStop := self findIn: aString Delimiters: separators startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (aString copyFrom: keyStart to: (keyStop - 1))]].
	^tokens