tests
testRemoteSessionInitialization
	| sessionProxy |
	
	sessionProxy := self buildDebuggerSessionFor: '1/0'.

	self assert: sessionProxy ~= nil. 
	self assert: sessionProxy clientProcess equals: nil. 
	self assert: sessionProxy isAboutUIProcess equals: false. 
	
	self assert: sessionProxy gemstoneClient equals: self client. 
	self assert: sessionProxy gemstoneDebuggerSession ~= nil. 
	self assert: sessionProxy gemstoneNotification ~= nil. 
	
	self assert: sessionProxy gemstoneNotification errorNumber equals: 2026. 
	self assert: sessionProxy name equals: 'a ZeroDivide occurred (error 2026), reason:numErrIntDivisionByZero, attempt to divide 1 by zero'. 