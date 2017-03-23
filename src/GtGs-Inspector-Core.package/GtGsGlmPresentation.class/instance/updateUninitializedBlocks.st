updating
updateUninitializedBlocks
	
	titleBlock ifNil: [ titleBlock := [ nil ] ].
	displayBlock ifNil: [ displayBlock := [ self ] ].
	sendBlock ifNil: [ sendBlock := [ :anObject | anObject ] ]
	