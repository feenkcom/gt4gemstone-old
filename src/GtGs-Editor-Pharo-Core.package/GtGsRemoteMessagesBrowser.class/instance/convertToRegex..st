private
convertToRegex: aString
	| specials |
	
	specials := '^$:\+*[](){}'.
	
	^ (aString indexOf: $:) > 0
		ifFalse: [
			(String 
				streamContents: [:s | 
					aString do: [:c | (specials includes: c) ifTrue: [s nextPut:$\].
					s nextPut: c]]) asRegex ]
		ifTrue: [ 
			| pattern |
			pattern := WriteStream on: String new.
			"specials := '^$:\+*[]()'."
			aString keywords
				do: [ :arg | 
					| convertedArg |
					convertedArg := String
						streamContents: [ :s | 
							arg
								do: [ :c | 
									(specials includes: c)
										ifTrue: [ s nextPut: $\ ].
									s nextPut: c ] ].
					pattern nextPutAll: convertedArg ]
				separatedBy: [ pattern nextPutAll: '[^:]+' ].
			pattern contents asRegex ]