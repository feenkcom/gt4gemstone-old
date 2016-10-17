private
executeInGemstoneContext: aString

	^ ((Smalltalk at: #TDTopezServer) for: 1) performStringAndBuildProxyFor: aString