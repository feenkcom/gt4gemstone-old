searching
proxyToSearchResultForContext: aContext
	| searchQuery topesServerOop|
	topesServerOop := self gemstoneClient todeServerOopType asInteger .
	searchQuery := 	aContext text ifEmpty: [ nil ] ifNotEmpty: [ :text2 | text2 trimBoth ] .

	gemstoneAllCandidatesBlock ifNotNil: [ 
		^ self performCompleteSearchFor: searchQuery andServerOop: topesServerOop ].
	gemstoneItemsBlock ifNotNil: [ 
		^ self performSearchBlockFor: searchQuery andServerOop: topesServerOop ].
	^ #()