opening
openOnLocalModel: aBrowserModel
	| instance |
	
	instance := self new.
	aBrowserModel initializeCodeBrowserWith: instance.
	^ instance openOn: aBrowserModel
		