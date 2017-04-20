*GtGs-Inspector-Pharo-Core
selectionAsCallbackArgumentFor: aPresentation
	"In a list-like presentation the selection consists in the selected node."
	
	^ self gemstoneClient session asOopType: aPresentation selection selfOop
