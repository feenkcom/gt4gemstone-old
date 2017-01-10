utils
buildItemsPresentationToTest
	| inspectorProxy itemsPresentation |
	
	inspectorProxy := self client buildRemoteInspectorProxyFrom: self newCollectionToTest.	
	itemsPresentation := inspectorProxy gsPresentations first.
	^ itemsPresentation