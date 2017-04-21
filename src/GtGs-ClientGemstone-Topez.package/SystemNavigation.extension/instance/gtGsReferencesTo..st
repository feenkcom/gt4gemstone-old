*GtGs-ClientGemstone-Topez
gtGsReferencesTo: aClassName
	^ (TDMethodDefinition rawReferencesTo: aClassName isMeta: false in: nil) 
		collect: [ :each | each compiledMethod ] 