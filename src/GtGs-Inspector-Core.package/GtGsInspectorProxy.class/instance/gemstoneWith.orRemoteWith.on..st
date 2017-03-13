as yet unclassified
gemstoneWith: aBlock orRemoteWith: aSelector on: aComposite

	self gtGsIsGemstone 
		ifTrue: [
			aBlock cull: aComposite ]
		ifFalse: [
			self 
				glamourPresentationUsing: aSelector
				on: aComposite ]