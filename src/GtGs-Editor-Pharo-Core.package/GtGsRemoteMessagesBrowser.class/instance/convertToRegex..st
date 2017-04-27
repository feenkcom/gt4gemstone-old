private
convertToRegex: aString
	| specials |
	
	specials := '^$:\+*[](){}'.
	^(String 
		streamContents: [:s | aString 
			do: [:c | (specials includes: c) ifTrue: [s nextPut:$\].
				s nextPut: c]]) asRegex