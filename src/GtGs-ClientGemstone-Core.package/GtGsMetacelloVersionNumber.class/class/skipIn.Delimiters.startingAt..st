adapted
skipIn: aString Delimiters: delimiters startingAt: start 
	<flag: #temporary>
	
	"Answer the index of the character within the receiver, starting at start, that does NOT match one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1.  Assumes the delimiters to be a non-empty string."

	start to: aString size do: [:i |
		delimiters detect: [:delim | delim = (aString at: i)]
				ifNone: [^ i]].
	^ aString size + 1