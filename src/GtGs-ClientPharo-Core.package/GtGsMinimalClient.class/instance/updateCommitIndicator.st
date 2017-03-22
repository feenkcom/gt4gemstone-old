private
updateCommitIndicator

	needsCommitIndicator := self isActive 
		ifTrue: [ self needsCommit ]
		ifFalse: [ false ]