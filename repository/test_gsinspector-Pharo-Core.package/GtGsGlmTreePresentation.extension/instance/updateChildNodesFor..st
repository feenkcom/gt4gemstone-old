*test_gsinspector-Pharo-Core
updateChildNodesFor: aListNode
	| updatedChildNodes |
	updatedChildNodes := self 
		executeRemotely: #computeAllChildNodesFor: 
		withArguments: {self gemstoneClient objectSerializer 
			toString:  (aListNode childNodes collect: #targetObjectOop)}.
	aListNode childNodes withIndexDo: [ :aNode :index |
		aNode childNodes: (updatedChildNodes at: index) ].