*test_gsinspector-Pharo-Core
asGlamourPresentationOn: aComposite 
	| glamourPresentation |
	
	glamourPresentation := self instantiateGlamourPresentation.
	aComposite custom: glamourPresentation.
	self setGlamourPresentationAttributesFor: glamourPresentation.
	^ glamourPresentation