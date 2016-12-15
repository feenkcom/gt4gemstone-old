ui building
buildGoForwardButtons
	| nextPageButton lastPageButton |
	nextPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToRightIcon 
		actionSelector: #nextPage
		arguments: {}
		getEnabled: nil "#notOnLastPage"
		help: 'Next page'.

	lastPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToRightEndIcon
		actionSelector: #fullList
		arguments: {}
		getEnabled: nil "#notOnLastPage"
		help: 'Last page'.
		
	^ { nextPageButton . lastPageButton }