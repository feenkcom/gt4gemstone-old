ui building
buildGoBackwardButtons
	| previousPageButton firstPageButton |
	firstPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToLeftEndIcon 
		actionSelector: #jumpToFirstPage
		arguments: {}
		getEnabled: #isFirstElementNotDisplayed
		help: 'Display the first ', (dataSource numberOfLoadedElements - 1) asString, ' elements'.
		
	previousPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToLeftIcon
		actionSelector: #loadPreviousPage
		arguments: {}
		getEnabled: #isFirstElementNotDisplayed
		help: 'Load the previous ', dataSource amountToIncrement asString, ' elements'.
		
	^ { firstPageButton . previousPageButton }