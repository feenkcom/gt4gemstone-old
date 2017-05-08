*GtGs-ClientGemstone-Topez
gtGsImplementorsOf: aSelector
	^ (self allMethodsNoDoitsSelect: [ :aMethod | aSelector = aMethod selector ])
		collect: [ :each | each compiledMethod ] .