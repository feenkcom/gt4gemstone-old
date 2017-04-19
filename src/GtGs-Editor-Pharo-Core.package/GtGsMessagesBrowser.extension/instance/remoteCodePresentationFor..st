*GtGs-Editor-Pharo-Core
remoteCodePresentationFor: aMethodNode
	
	^ codePresentation := self remotePresentationUsing: #codePresentationFor: forNode: aMethodNode