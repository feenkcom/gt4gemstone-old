*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 
	self flag: 'Why are we using cacheAt:ifAbsentPut: here? 
	They are anyway stored in computeTitle and computeDisplayValue'.
	super setGlamourPresentationAttributesFor: aPresentation.
	aPresentation
		shouldValidate: false;
		allowsRecursiveSearch: false;
		icon: [ :aListNode | 
			aListNode iconId   
				ifNotNil: [ Smalltalk ui icons iconNamed: aListNode iconId ] ]