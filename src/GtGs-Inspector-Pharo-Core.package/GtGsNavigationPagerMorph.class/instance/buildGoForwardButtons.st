ui building
buildGoForwardButtons
	| nextPageButton lastPageButton |
	nextPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToRightIcon 
		actionSelector: #loadNextPage
		arguments: {}
		getEnabled: #isLastElementNotDisplayed
		help: 'Load the next ', dataSource amountToIncrement asString, ' elements'.

	lastPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToRightEndIcon
		actionSelector: #jumpToLastPage
		arguments: {}
		getEnabled: #isLastElementNotDisplayed
		help: 'Display the last ', dataSource numberOfLoadedElements asString, ' elements'.
		
	^ { nextPageButton . lastPageButton }