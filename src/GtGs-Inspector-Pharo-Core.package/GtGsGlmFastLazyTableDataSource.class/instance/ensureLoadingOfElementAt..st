as yet unclassified
ensureLoadingOfElementAt: anIndex
	"Update the list of elements in the GemStone presentation and
	clear the list of elements stored in this data source. This list
	will be extracted from the GemStone presentation as soon as #elements
	is sent to this data source."

	self gtGsPresentation ensureLoadingOfElementAt: anIndex.
	self elements: nil.