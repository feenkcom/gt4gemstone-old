private
todeServerCreationStringWithOptions: withOptions
	| str |
	str := 'SessionTemps current
		at: #''Gt4gemstone_Topez_Class_Name'' put: TDTopezServer name.
	TDTopezServer createFor: 1'.
	withOptions
		ifTrue: [ str := str , ' options: #(#transcript)' ].
	^ str