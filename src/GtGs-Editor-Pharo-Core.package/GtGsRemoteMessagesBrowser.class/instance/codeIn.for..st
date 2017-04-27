building presentations
codeIn: aComposite for: aMethodNode 
	| gsCodePresentation glmPresentation |

	gsCodePresentation := (gemstoneBrowser remoteCodePresentationFor: aMethodNode).
	glmPresentation := gsCodePresentation gtGsAsGlamourPresentationIn: aComposite.
	gsCodePresentation parameters at: 'selectionString' ifPresent: [ :aString | 
		aString ifNotNil: [ self updateSelectionIn: glmPresentation forString: aString  ] ].
	
	^ glmPresentation
	