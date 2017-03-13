as yet unclassified
gemstoneOrRemoteWith: aBlock on: aComposite

	^ self gtGsIsGemstone 
		ifTrue: [
			aBlock cull: aComposite ]
		ifFalse: [
			self 
				glamourPresentationFor: #yourself
				using: thisContext sender selector
				on: aComposite ]