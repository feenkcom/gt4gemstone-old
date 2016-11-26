building actions
stackDebuggingActionsPragmas
	^ self selectedContext 
		ifNil: [ self session stackDebuggingActionsPragmas ]
		ifNotNil: [ :aContext | (self sessionForContext: aContext) stackDebuggingActionsPragmas ]
