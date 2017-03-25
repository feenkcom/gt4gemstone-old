tests
testBareProxyPrinting
	| uninitializedProxy initializedProxy |
	
	uninitializedProxy := GtGsBareProxy new.
	self assert: uninitializedProxy printString equals: 'inactive'.
	self assert: uninitializedProxy gtDisplayString equals: 'inactive'.
	
	initializedProxy := self client buildRemoteBareProxyFrom: 'Object new'.
	
	self assert: initializedProxy printString equals: 'anObject'.
	self assert: initializedProxy gtDisplayString equals: 'anObject'.
	
	"Force a logout to make sure printing is disabled."
	self client logout.
	self assert: initializedProxy printString equals: 'inactive'.
	self assert: initializedProxy gtDisplayString equals: 'inactive'.