utils
buildItemsPresentationToTest
	| inspectorProxy itemsPresentation |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newCollectionToTest.	
	itemsPresentation := inspectorProxy gsPresentations second.
	itemsPresentation 
		obtainDisplayValue;
		obtainTotalNumberOfElements.
	^ itemsPresentation