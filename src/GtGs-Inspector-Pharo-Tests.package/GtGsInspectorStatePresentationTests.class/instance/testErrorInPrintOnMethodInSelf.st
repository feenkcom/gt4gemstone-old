testing
testErrorInPrintOnMethodInSelf
	| inspectorProxy gsStatePresentation rootNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newTestObjectWithPrintingError.
	gsStatePresentation := inspectorProxy gsPresentations first.
	rootNodes := gsStatePresentation cacheAt: #displayValue.

	self assertNodesColumnsContentFor: rootNodes equals: {
		{ 'self'. '<error printing>' }.
		{ #x. '<error printing>' }.
		{ #y. 'aGtGsTestObjectWithPrintError' }.
		{ #triggerPrintingError. 'nil' } }.