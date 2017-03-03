*GtGs-Inspector-Pharo-Core
remoteMethodsPresentationFor: classNode
	
	^ methodsPresentation := self remotePresentationUsing: #methodsPresentationFor: forNode: classNode