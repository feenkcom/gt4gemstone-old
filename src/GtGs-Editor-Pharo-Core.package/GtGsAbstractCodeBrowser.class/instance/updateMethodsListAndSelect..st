updating
updateMethodsListAndSelect: aSelector
	
	self currentMethodsPresentation update.
	aSelector 
		ifNil: [ 
			((self browser paneNamed: 'methods') port: #category) 
				silentValue: nil;
				value: self currentCategoriesPresentation selection ]
		ifNotNil: [ self currentMethodsPresentation selection: aSelector ]