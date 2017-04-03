as yet unclassified
buildInstanceUsing: aGemstoneClient
	| classOop |
	classOop := aGemstoneClient  evaluateStringRemotely: 'Reflection oopOf: GtGsPharoGemstonePingPong'.
	^ aGemstoneClient 
		executeRemotely: #buildNewInstance
		on: (aGemstoneClient session asOopType: classOop)
		withArguments: #().