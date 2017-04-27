building presentations
methodsIn: aComposite
	| gsMethodsPresentation |
	
	gsMethodsPresentation := gemstoneBrowser remoteMethodsPresentation.
	^ (gsMethodsPresentation gtGsAsGlamourPresentationIn: aComposite)
		initialize: [ :aGlmPresentation | 
			aGlmPresentation displayValue ifNotEmpty: [ :aList |
				aGlmPresentation selection: aList first ] ]
	