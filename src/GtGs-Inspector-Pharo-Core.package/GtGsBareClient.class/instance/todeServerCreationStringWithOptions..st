as yet unclassified
todeServerCreationStringWithOptions: withOptions
	| str |
	str := 'GtGsTopezServer createFor: 1'.
	withOptions
		ifTrue: [ str := str , ' options: #(#transcript)' ].
	^ str