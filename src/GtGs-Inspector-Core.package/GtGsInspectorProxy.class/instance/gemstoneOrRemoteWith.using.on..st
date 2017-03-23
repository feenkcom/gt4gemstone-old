reflective operations
gemstoneOrRemoteWith: aBlock using: aSelector on: aComposite

	^ self gtGsIsGemstone 
		ifTrue: [
			aBlock cull: aComposite ]
		ifFalse: [
			self 
				perform: #inspectorPresentationFor:using:on:
				withArguments: { #yourself . aSelector .aComposite } ]