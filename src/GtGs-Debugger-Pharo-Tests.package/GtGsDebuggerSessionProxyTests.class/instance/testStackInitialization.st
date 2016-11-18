as yet unclassified
testStackInitialization
	| sessionProxy stack |
	sessionProxy := self buildDebuggerSessionFor: '1/0'.
	stack := sessionProxy stack.
	
	self assert: stack frames ~= nil.
	self assert: stack currentFrame ~= nil.
	self assert: stack exception equals: nil.
	self assert: stack process equals: nil.
	self assert: stack debugTool equals: nil.
	
	self assert: stack frames size equals: 10.
	self assert: (stack frames includes: stack currentFrame).