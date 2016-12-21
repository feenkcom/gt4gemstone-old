as yet unclassified
fetchInstanceFromGemstoneUsing: aGemstoneClient
	| classOop instance |
	classOop := aGemstoneClient  performStringRemotely: 'Reflection oopOf: GtGsPharoGemstonePingPong'.
	instance := aGemstoneClient 
		executeRemotely: #buildNewInstance
		on: (aGemstoneClient session asOopType: classOop)
		withArguments: #().
	instance gemstoneClient: aGemstoneClient.
	instance linkWithGemstone.
	^ instance