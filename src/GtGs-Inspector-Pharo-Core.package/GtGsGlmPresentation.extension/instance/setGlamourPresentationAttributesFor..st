*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	aPresentation
		title: (self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ]) ;
		display: [ 
			self obtainDisplayValue ];
		send: [ :aListNode :originPorts ||serializedProxy|
			aListNode class = GtGsInspectorProxy 
			ifTrue: [ 
				self flag: 'needed because of the experimental actions that
				populate the selection through a call from gemstone.'.
				aListNode gemstoneClient ifNil: [ 
					aListNode gemstoneClient: self gemstoneClient ].
				aListNode ]
			ifFalse: [ | presentationTitle |
				presentationTitle := self extractPresentationToSelectFrom: originPorts first pane.
				serializedProxy := self 
					executeRemotely: #computeNextInspectorProxyFor:andSelect:
					withArguments: { 
						aListNode selfOop. self gemstoneClient objectSerializer toString: presentationTitle }.
				serializedProxy
					gemstoneClient: self gemstoneClient;
					yourself ] ].
		
	self gsActions withIndexDo: [ :aGsAction :anIndex |
		aPresentation actions add:
			(aGsAction 
				asGlamourActionFromGsPresentation: self
				withId: anIndex) ].
			
	self gsSelectionActions withIndexDo: [ :aGsAction :anIndex |
		aPresentation selectionActions add:
			(aGsAction 
				asGlamourActionFromGsPresentation: self
				withId: anIndex) ]
