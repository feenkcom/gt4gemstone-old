actions - remote
compileRemoteMethodCode: aString

	^ self gemstoneClient 
		send: #compileSource:classified:inClassNamed:onClassSideIf:
		withArgs: { aString . categoryName . className . (currentSide = #class) }