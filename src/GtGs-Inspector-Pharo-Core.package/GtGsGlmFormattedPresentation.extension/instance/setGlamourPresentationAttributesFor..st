*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	super setGlamourPresentationAttributesFor: aPresentation.
	aPresentation
		format: [ :aListNode | aListNode displayValue ]