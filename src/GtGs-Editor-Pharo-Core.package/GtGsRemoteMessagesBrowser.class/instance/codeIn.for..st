building presentations
codeIn: aComposite for: aMethodNode 
	| gsCodePresentation |

	gsCodePresentation := gemstoneBrowser remoteCodePresentationFor: aMethodNode.
	^ (gsCodePresentation gtGsAsGlamourPresentationIn: aComposite)
	 	initialize: [ :aGlmPresentation | 
			self 
				updateSelectionIndexIn: aGlmPresentation 
				forSelectedString: (gsCodePresentation parameters at: 'selectionString') ]
	