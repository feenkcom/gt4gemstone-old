adding
addFirst: first last: last
	^self contacts add: (ABContact first: first last: last)
	