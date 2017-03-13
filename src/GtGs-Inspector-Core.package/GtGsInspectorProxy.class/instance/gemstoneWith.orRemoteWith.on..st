as yet unclassified
gemstoneWith: aBlock orRemoteWith: aPresentationSelector on: aComposite

	self gtGsIsGemstone 
		ifTrue: [
			aBlock cull: aComposite ]
		ifFalse: [
			self 
				glamourPresentationFor: #yourself
				using: aPresentationSelector
				on: aComposite ]