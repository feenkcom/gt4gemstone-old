private
todeServerCreationStringWithOptions: withOptions
	| str |
	str := 'GtGsBareTopezServer createFor: 1'.
	withOptions
		ifTrue: [ str := str , ' options: #(#transcript)' ].
	^ str