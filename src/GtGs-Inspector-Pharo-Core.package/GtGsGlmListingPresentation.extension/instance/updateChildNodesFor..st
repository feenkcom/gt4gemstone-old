*GtGs-Inspector-Pharo-Core
updateChildNodesFor: aListNode
	| updatedChildNodes |
	updatedChildNodes := self 
		executeRemotely: #computeChildNodesFor: 
		withArguments: {self gemstoneClient objectSerializer 
			toString: (aListNode selfOop)}.
	aListNode childNodes: updatedChildNodes