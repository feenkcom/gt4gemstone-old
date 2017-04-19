building presentations
codeIn: aComposite for: aMethodNode 
	| gsCodePresentation |

	gsCodePresentation := (gemstoneBrowser remoteCodePresentationFor: aMethodNode) 
		gtGsAsGlamourPresentationIn: aComposite;
		yourself.
	