updating
updateCategoriesSelectMethod: aSelector
	
	self currentCategoriesPresentation update.
	self currentCategoriesPresentation selection: '--all--'.
	aSelector 
		ifNotNil: [ self currentMethodsPresentation selection: aSelector ]