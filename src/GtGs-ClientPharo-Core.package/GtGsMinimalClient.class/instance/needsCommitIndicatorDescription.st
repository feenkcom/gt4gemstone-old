accessing
needsCommitIndicatorDescription
	^  needsCommitIndicator notNil & needsCommitIndicator
			ifTrue: [ ' [*]' ]
			ifFalse: [ '' ] 
	