testing
testErrorInPrintOnMethodInExpandedChild
	| inspectorProxy gsStatePresentation rootNodes |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newTestObjectWithPrintingError.
	gsStatePresentation := inspectorProxy gsPresentations first.
	rootNodes := gsStatePresentation cacheAt: #displayValue.

	gsStatePresentation updateChildNodesFor: rootNodes second.
	self assertNodesColumnsContentFor: rootNodes second rawChildNodes equals: {
		{ #x. '4' }.
		{ #y. '2' }.
		{ #triggerPrintingError. 'nil' } }. 
		
	gsStatePresentation updateChildNodesFor: rootNodes third.
	self assertNodesColumnsContentFor: rootNodes third rawChildNodes equals: {
		{ #x. '<error printing>' }.
		{ #y. '42' }.
		{ #triggerPrintingError. 'false' } }.
	