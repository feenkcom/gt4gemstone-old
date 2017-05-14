building actions
codeActionsPragmas
	^ self selectedContext 
		ifNil: [ self session codeActionsPragmas ]
		ifNotNil: [ :aContext | (self sessionForContext: aContext) codeActionsPragmas ]
