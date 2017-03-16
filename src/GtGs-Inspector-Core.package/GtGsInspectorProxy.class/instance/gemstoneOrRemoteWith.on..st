reflective operations
gemstoneOrRemoteWith: aBlock on: aComposite

	^ self gtGsIsGemstone 
		ifTrue: [
			aBlock cull: aComposite ]
		ifFalse: [
			self 
				inspectorPresentationFor: #yourself
				using: thisContext sender selector
				on: aComposite ]