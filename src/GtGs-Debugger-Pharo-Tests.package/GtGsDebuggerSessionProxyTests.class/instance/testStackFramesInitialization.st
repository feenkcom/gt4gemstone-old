as yet unclassified
testStackFramesInitialization
	| sessionProxy stack |
	sessionProxy := self buildDebuggerSessionFor: '1/0'.
	stack := sessionProxy stack.
	
	self assert: (stack frames allSatisfy: [ :aFrame | aFrame stack = stack ]).
	self assert: (stack frames allSatisfy: [ :aFrame | aFrame cachedFrameLabel notNil ]).
	self assert: ((stack frames copyWithout: stack currentFrame) allSatisfy: [ :aFrame |
			aFrame needsFullUpdate ]).
	
	self assert: stack currentFrame needsFullUpdate not.
	self assert: stack currentFrame frameIndex equals: 4.
	self assert: stack currentFrame cachedFrameLabel equals: 'SmallInteger>>/ @7 line 7'
	