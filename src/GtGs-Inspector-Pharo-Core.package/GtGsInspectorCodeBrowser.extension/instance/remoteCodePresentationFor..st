*GtGs-Inspector-Pharo-Core
remoteCodePresentationFor: methodNode
	
	^ codePresentation := self remotePresentationUsing: #codePresentationFor: forNode: methodNode