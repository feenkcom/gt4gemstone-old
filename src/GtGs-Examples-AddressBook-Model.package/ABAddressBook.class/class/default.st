accessing
default
	^default ifNil: [ default := self new
			label: 'My contacts' ]