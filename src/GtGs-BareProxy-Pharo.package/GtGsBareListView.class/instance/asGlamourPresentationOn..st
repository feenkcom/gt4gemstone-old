printing
asGlamourPresentationOn: aComposite
	^ aComposite fastList 
		display: [ self elements ]