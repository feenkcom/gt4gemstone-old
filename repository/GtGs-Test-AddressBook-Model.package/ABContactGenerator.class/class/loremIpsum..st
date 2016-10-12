as yet unclassified
loremIpsum: size
	"Return a mostly random multi-paragraph filler string of the specified size.
	The result is pure ASCII, uses CR for newlines and ends with a dot and newline."
	
	"self loremIpsum: 2048"
	
	| words out |
	words := (self loremIpsum findTokens: ' ,.') collect: #asLowercase.
	(out := LimitedWriteStream on: (String new: size))
		setLimit: size - 2 
		limitBlock: [ 
			"Make it work on Pharo and Gemstone"
			^ ((out respondsTo: #'originalContents')
				ifTrue: [ out originalContents ]
				ifFalse: [ out collection ])
					at: size - 1 put: $.; 
					at: size put: Character cr; 
					yourself ].
	[ 
		out << self loremIpsum; cr; cr.
		5 atRandom timesRepeat: [
			15 atRandom timesRepeat: [
	 			out << words atRandom capitalized.
				20 atRandom timesRepeat: [ out space; << words atRandom ].
				out nextPut: $.; space ].
			out cr; cr ] ] repeat