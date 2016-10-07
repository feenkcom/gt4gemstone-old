initialization
updateUninitializedBlocks
	
	titleBlock ifNil: [ titleBlock := [ 'GlmPresentation' ] ].
	displayBlock ifNil: [ displayBlock := [ { self } ] ].
	sendBlock ifNil: [ sendBlock := [ :anOop | anOop ] ]
	