ui building
buildGoBackwardButtons
	| previousPageButton firstPageButton |
	firstPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToLeftEndIcon 
		actionSelector: #fullList
		arguments: {}
		getEnabled: nil "#notOnLastPage"
		help: 'First page'.
		
	previousPageButton := self
		buttonLabel: MorphTreeNavigationBar smallToLeftIcon
		actionSelector: #nextPage
		arguments: {}
		getEnabled: nil "#notOnLastPage"
		help: 'Previous page'.
		
	^ { firstPageButton . previousPageButton }