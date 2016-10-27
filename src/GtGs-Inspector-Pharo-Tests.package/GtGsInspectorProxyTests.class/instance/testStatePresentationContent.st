testing
testStatePresentationContent
	| inspectorProxy displayNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newBasicTestObject.	
	displayNodes := inspectorProxy gsPresentations second cacheAt: #displayValue.
	
	self assertCollection: displayNodes first columnValues 
	     hasSameElements: { 'self'. 'aGtGsTestObjectBasic' }.
	self assertCollection: displayNodes second columnValues 
	     hasSameElements: { #x. '42' }.
	self assertCollection: displayNodes third columnValues 
	     hasSameElements: { #y. '43' }.
	self assertCollection: displayNodes fourth columnValues 
	     hasSameElements: { #z. '44' }.
	self assertCollection: displayNodes fifth columnValues 
	     hasSameElements: { #w. '45' }.