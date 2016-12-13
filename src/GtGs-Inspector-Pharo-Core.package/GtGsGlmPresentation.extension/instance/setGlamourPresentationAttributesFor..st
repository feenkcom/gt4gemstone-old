*GtGs-Inspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	aPresentation
		title: (self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #'computeTitle' ]) ;
		display: [ 
			self obtainDisplayValue ];
		send: [ :aListNode ||serializedProxy|
			aListNode class = GtGsInspectorProxy 
			ifTrue: [ 
				self flag: 'needed because of the experimental actions that
				populate the selection through a call from gemstone.'.
				aListNode gemstoneClient ifNil: [ 
					aListNode gemstoneClient: self gemstoneClient ].
				aListNode ]
			ifFalse: [ 
				self flag: 'A better solution is needed here'.
				serializedProxy := self 
					executeRemotely: #computeInspectorProxyAndTransformSelectionFor: 
					withArguments: { aListNode selfOop }.
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
